module JobsHelper
  def job_link(job)
    (job.link? ? job.link : job)
  end

  def job_target(job)
    (job.link? ? '_blank' : '_self')
  end
end
