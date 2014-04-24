require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page", :type => :feature do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit 'static_pages/home'
      should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
      visit 'static_pages/home'
      should have_title("Ruby on Rails Tutorial Sample App | Home")
    end

  end

describe "Help page", :type => :feature do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit 'static_pages/help'
      should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit 'static_pages/help'
      should have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
 

describe "About page", :type => :feature do
    it "should have the content 'About'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit 'static_pages/about'
     should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About'" do
      visit 'static_pages/about'
    should have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
