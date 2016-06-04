require 'rails_helper'

RSpec.feature 'Jobs', type: :feature do
  context 'When creating a Job' do
    let!(:job) { build :job }

    before :each do
      visit '/jobs'
      click_on 'New Job'
    end

    def job_defaults
      fill_in 'job_title', with: job.title
      fill_in 'job_description', with: job.description
      choose 'job_terms_' + job.terms
    end

    it 'it saves successfully' do
      job_defaults
      click_on 'Create Job'
      expect(page).to have_content job.description
    end

    it 'user can select a job type'do
      job_defaults
      click_on 'Create Job'
      expect(page).to have_content job.terms
    end
  end
end
