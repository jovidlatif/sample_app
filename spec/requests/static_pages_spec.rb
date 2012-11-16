require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "Its should have the h1 'Sample App'" do
     visit '/static_pages/home'
        page.should have_selector('h1', :text => 'Sample App')
    end
      
      it "should have the title 'Home'" do
          visit '/static_pages/home'
          page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
      end
      
      it "Should have the custom title" do
          visit '/static_pages/home'
          page.should_not have_selector('title', :text => '| Home')
          end
      
  end
    
    describe "Help page" do
    it "It should have the h1 'Help'" do
    visit '/static_pages/help'
        page.should have_selector('h1', :text => 'Help')
    end
        
        it "should have the title 'Help'" do
            visit '/static_pages/help'
            page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
        end
    end
    
    describe "About page" do
        it "It should have 'About us'" do
            visit '/static_pages/about'
            page.should have_selector('h1', :text => 'About us')
            end
        end
    
    it "should have the title 'About us'" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About us")
        end
    
    describe "Contact page" do
        it "It will include 'Contact us'" do
            visit '/static_pages/contact'
            page.should have_selector('h1', :text => 'Contact us')
            end
        end
            
            it "should have the title 'Contact us'" do
                visit '/static_pages/contact'
                page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact us")
                end
end
