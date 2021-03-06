require 'spec_helper'
require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  subject { page } # replace expect(page).to 

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('Home')) }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About us') }
    it { should have_title(full_title('About us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact us') }
    it { should have_title(full_title('Contact us')) }
  end

end
