require 'rails_helper'

RSpec.feature 'Jobs are listed', type: :feature  do
  context 'With expected attributes' do
    let!(:job){ create(:job) }

    before :each do
      visit '/jobs'
    end

    it 'with a title' do
      expect(page).to have_content job.title
    end

    it 'with a description' do
      expect(page).to have_content job.description
    end

    it 'with a location' do
      expect(page).to have_content job.location
    end

    it 'with a remote flag' do
      expect(page).to have_content job.remote
    end
  end
end