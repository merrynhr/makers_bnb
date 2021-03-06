# require 'spec_helper'

feature 'sign up' do

    scenario 'user can sign up and sign in' do 
        visit('/')
        fill_in('email', with: 'test@gmail.com')
        fill_in('password_one', with: 'test123')
        fill_in('password_two', with: 'test123')
        click_button('Sign-up')
        expect(page.current_path).to eq('/spaces')
    end
end

