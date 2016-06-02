require 'rails_helper'

RSpec.feature 'Jobs can be edited', type: :feature do
  context 'When editing a Job' do
    let!(:job) { create :job }
    let!(:job_mock) { build :job }

    it 'title is saved successfully' do
      visit edit_job_path(job)
      fill_in 'job_title', with: job_mock.title
      click_on 'Update Job'

      expect(page).to have_content job_mock.title
    end

    it 'description is saved successfully' do
      visit edit_job_path(job)
      fill_in 'job_description', with: job_mock.description
      click_on 'Update Job'

      expect(page).to have_content job_mock.description
    end

    it 'location is saved successfully' do
      visit edit_job_path(job)
      fill_in 'job_location', with: job_mock.location
      click_on 'Update Job'

      expect(page).to have_content job_mock.location
    end

    it 'remote is saved successfully' do
      visit edit_job_path(job)
      fill_in 'job_remote', with: job_mock.remote
      click_on 'Update Job'

      expect(page).to have_content job_mock.remote
    end

    it 'expiration date is saved successfully'
  end
end
