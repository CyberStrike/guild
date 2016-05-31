class JobArchiverJob < ApplicationJob
  queue_as :default

  def perform(*args)
    archive_jobs
  end

  def archive_jobs
    @jobs = Job.all
    @jobs.each do |j|
      if (DateTime.now > j.exp_date) then j.archived=true else j.archived=false end
      j.save
    end
  end

end
