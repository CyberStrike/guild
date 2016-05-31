class JobArchiverJob < ApplicationJob
  queue_as :default

  def perform(*args)
    archive_jobs
  end

  def archive_jobs
    @jobs = Job.all
    @jobs.each do |j|
      j.archived=true unless (DateTime.now < j.exp_date)
      j.save
    end
  end

end
