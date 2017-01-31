class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def dashboard
    @jobs = @user.jobs.order('created_at DESC')
  end

  private

  def set_user
    @user = current_user
  end
end
