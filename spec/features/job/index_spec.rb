require 'rails_helper'

RSpec.feature 'Jobs are listed', type: :feature  do
  context 'With expected attributes' do
    let!(:job){ create(:job) }

    before :each do
      visit '/jobs'
    end

    it 'a title' do
      expect(page).to have_content job.title
    end

    it 'a description' do
      expect(page).to have_content job.description
    end

    it 'a location' do
      expect(page).to have_content job.location
    end

    it 'a remote flag' do
      expect(page).to have_content job.remote
    end
  end
end