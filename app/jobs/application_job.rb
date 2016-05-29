class ApplicationJob < ActiveJob::Base
  def archive_jobs
    @jobs = Job.all
    @jobs.each do |j|
      if DateTime.now > j.exp_date
        j.archived = true
      else
        j.archived = false
      end
    end
  end
end
