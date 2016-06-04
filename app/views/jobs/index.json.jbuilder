json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :link, :location, :remote, :exp_date, :terms
  json.url job_url(job, format: :json)
end
