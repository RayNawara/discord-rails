# spec/system/user_authentication_spec.rb

require 'rails_helper'

RSpec.describe 'User Authentication', type: :system do
  describe 'Sign Up' do
    it 'allows a new user to sign up' do
      visit new_user_registration_path # Adjust the path if needed

      fill_in 'Email', with: 'new_user@example.com'
      fill_in 'Password', with: 'password123'
      fill_in 'Password confirmation', with: 'password123'
      click_button 'Sign up'

      expect(page).to have_content('Welcome! You have signed up successfully.')
    end
  end

  describe 'Sign In' do
    let!(:user) { create(:user, email: 'existing_user@example.com', password: 'password123') }

    it 'allows an existing user to sign in' do
      visit new_user_session_path # Adjust the path if needed

      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'

      expect(page).to have_content('Signed in successfully.')
    end
  end
end
