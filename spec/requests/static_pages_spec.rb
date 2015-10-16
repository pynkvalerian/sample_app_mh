require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "Home page" do
  	it "should have the right title with content 'Sample App" do
  		visit '/static_pages/home'
  		expect(page).to have_content('Sample App')
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  	end
  end

  describe "Help page" do
  	it "should have the right title with  content 'Help" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  	end
  end

  describe "About page" do
  	it "should have the right title with  content 'About us" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About us')
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About us")
  	end
  end


  describe "Contact page" do
  	it "should have the right title with  content 'Contact us" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact us')
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact us")
  	end
  end
end
