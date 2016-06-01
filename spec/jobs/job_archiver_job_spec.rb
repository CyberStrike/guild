require 'rails_helper'

RSpec.describe JobArchiverJob, :type => :job do
  context 'When archiver runs' do
    let!(:job){ create :job, :expires_now }

    it 'should set expired jobs to true' do
      JobArchiverJob.perform_now
      job.reload
      expect(job.archived).to eq true
    end
  end
end
