require 'spec_helper'

describe "StaticPages" do
  subject { page }
  let(:base_title) {"Ruby on Rails Tutorial Sample App "}

  describe "Home page", :type => :feature do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit 'static_pages/home'
      should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
      visit 'static_pages/home'
      should have_title("#{base_title}| Home")
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
      should have_title("#{base_title}| Help")
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
    should have_title("#{base_title}| About Us")
    end
  end

  describe "Contact page", :type => :feature do
    it "should have the h1 'Contact'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit 'static_pages/contact'
      should have_selector('h1', :text => 'Contact')
    end
    it "should have the title 'Contact'" do
      visit 'static_pages/contact'
    should have_title("#{base_title}| Contact")
    end
  end
end
