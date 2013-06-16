require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have content 'Vishal'" do
      visit '/static_pages/home'
      expect(page).to have_content('Vishal')
    end
  
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Vishal Call App")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(' | Home')
    end
  end
end
