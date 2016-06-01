require 'rails_helper'

RSpec.feature 'Jobs can be deleted', type: :feature do
  context 'When deleting a Job' do
    let!(:job) { create(:job) }

    it 'it deletes successfully' do
      visit jobs_path
      click_on 'Destroy'
      expect(page).to have_content 'Job was successfully destroyed.'
    end
  end
end
