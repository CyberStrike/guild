require 'rails_helper'

RSpec.feature 'Sign in', type: :feature, focus: true, js: true do
  context 'A user signs in' do

    let!(:user){ create :user }

    before :each do
      visit new_user_session_path
    end

    it 'fails if not registered' do
       signin(build :user)
       expect(page).to have_content 'Invalid Email or password'
    end

    it 'with valid credentials'  do
      signin(user)
      expect(page).to have_content 'Signed in successfully'
    end

    it 'user cannot sign in with invalid email' do
      user.email = 'invalid@email.com'
      signin(user)
      expect(page).to have_content 'Invalid Email or password'
    end

    it 'user cannot sign in with invalid password' do
      user.password = 'invalid@invalidpass.com'
      signin(user)
      expect(page).to have_content 'Invalid Email or password'
    end
  end
end
