class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :new, :example]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.where(archived: false).order('created_at DESC')
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    redirect_to @job.link if @job.link.present?
  end

  def example
    @job = Job.find 1337
    render :show
  end

  # GET /jobs/new
  def new
    @job = Job.new
    @job.exp_date = Date.today + 30.days
  end

  # GET /jobs/1/edit
  def edit
    respond_to do |format|
      format.html { render :edit } if current_user == @job.user
      format.html { redirect_to @job, alert: 'Access Denied' }
    end
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params.merge(user: current_user))
    @job.exp_date = Date.today + 30.days

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if current_user != @job.user
        format.html { redirect_to @job, alert: 'Access Denied' }
        format.json { render json: nil, status: :unauthorized, location: @job }
      elsif current_user == @job.user && @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      if current_user != @job.user
        format.html { redirect_to @job, alert: 'Access Denied' }
        format.json { render json: nil, status: :unauthorized, location: @job }
      elsif current_user == @job.user && @job.destroy!
        format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed' }
        format.json { head :no_content }
      else
        format.html { render :index }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = Job.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def job_params
    params.require(:job).permit(:company_name, :title, :link, :location, :description, :remote, :terms)
  end
end
