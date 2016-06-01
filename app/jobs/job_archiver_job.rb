class JobArchiverJob < ApplicationJob
  queue_as :default

  def perform(*args)
    archive_jobs
  end

  def archive_jobs
    Job.expired.each(&:archive!)
  end
end
