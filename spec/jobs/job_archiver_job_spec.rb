require 'rails_helper'

RSpec.describe JobArchiverJob, :type => :job do


  context 'When archiver runs' do
    it "should set expired jobs to true" do
      job = FactoryGirl.create(:job, :expires_now)

      JobArchiverJob.perform_now


      binding.pry
      expect(job.archived).to eq true

    end


  end
end
