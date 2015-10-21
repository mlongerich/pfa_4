require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "Home page" do
    it 'should have the content "Projects For Asia"' do
      visit '/static_pages/home'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/home'
      expect(page).to have_title("Projects For Asia")
    end
  end

  describe "About page" do
    it 'should have the content "About"' do
      visit '/static_pages/about'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/about'
      expect(page).to have_title("About | Projects For Asia")
    end
  end

  describe "Donate page" do
    it 'should have the content "Donate"' do
      visit '/static_pages/donate'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/donate'
      expect(page).to have_title("Donate | Projects For Asia")
    end
  end

  describe "Hope House page" do
    it 'should have the content "Hope House Children"' do
      visit '/static_pages/hopehouse'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/hopehouse'
      expect(page).to have_title("Hope House Children's Home | Projects For Asia")
    end
  end

  describe "Hope and a Future page" do
    it 'should have the content "Hope and a Future"' do
      visit '/static_pages/hopeandafuture'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/hopeandafuture'
      expect(page).to have_title("Hope and a Future | Projects For Asia")
    end
  end

  describe "Next Steps page" do
    it 'should have the content "Next Steps"' do
      visit '/static_pages/nextsteps'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/nextsteps'
      expect(page).to have_title("Next Steps | Projects For Asia")
    end
  end

  describe "Sponsorship page" do
    it 'should have the content "Sponsorship"' do
      visit '/static_pages/sponsorship'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/sponsorship'
      expect(page).to have_title("Sponsorship | Projects For Asia")
    end
  end

  describe "Hope of Glory page" do
    it 'should have the content "Hope of Glory"' do
      visit '/static_pages/hopeofglory'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/hopeofglory'
      expect(page).to have_title("Hope of Glory Children's Home | Projects For Asia")
    end
  end

  describe "Sunshine page" do
    it 'should have the content "Sunshine"' do
      visit '/static_pages/sunshine'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/sunshine'
      expect(page).to have_title("Sunshine School | Projects For Asia")
    end
  end

  describe "Special Projects page" do
    it 'should have the content "Special Projects"' do
      visit '/static_pages/specialprojects'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/specialprojects'
      expect(page).to have_title("Special Projects | Projects For Asia")
    end
  end

  describe "Blog page" do
    it 'should have the content "Blog"' do
      visit '/static_pages/blog'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/blog'
      expect(page).to have_title("Blog | Projects For Asia")
    end
  end

  describe "Contact page" do
    it 'should have the content "Contact"' do
      visit '/static_pages/contact'
      expect(page).to have_content("Projects For Asia")
    end
    it 'should have the right title' do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact | Projects For Asia")
    end
  end

end
