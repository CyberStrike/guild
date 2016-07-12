require 'rails_helper'

RSpec.feature 'Jobs are listed', type: :feature do
  context 'With expected attributes' do
    let!(:job) { create(:job, remote: true) }

    before :each do
      visit '/jobs'
    end

    it 'a title' do
      expect(page).to have_content job.title
    end

    it 'a location' do
      expect(page).to have_content job.location.titleize
    end

    it 'a remote flag' do
      expect(page).to have_content 'Remote'
    end

    it 'a job type' do
      expect(page).to have_content job.terms.titleize
    end
  end
end
