json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :link, :location, :description, :remote, :exp_date
  json.url job_url(job, format: :json)
end
