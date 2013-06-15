require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Vishal Call App" }
  
  describe "Home page" do

    it "should have content 'Vishal'" do
      visit '/static_pages/home'
      expect(page).to have_content('Vishal')
    end
  end
  
  it "should have the right title" do
    visit '/static_pages/home'
    expect(page).to have_title("#{base_title} | Home")
  end
end
