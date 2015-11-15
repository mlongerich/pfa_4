require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  let(:base_title) { "Projects For Asia Charitable Foundation, Inc."}
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content("Projects For Asia") }
    it { should have_title("#{base_title}") }
  end

  describe "Donate page" do
    before { visit donate_path }
    it { should have_content "Donate" }
    it { should have_title("Donate | #{base_title}") }
  end

  describe "Sponsorship page" do
    before { visit sponsorship_path }
    it { should have_content "Sponsorship" }
    it { should have_title("Sponsorship | #{base_title}") }
  end

  describe "India" do
    before { visit india_path }
    it { should have_content "India" }
    it { should have_title("India | #{base_title}") }
  end

  describe "Blog page" do
    before { visit blog_path }
    it { should have_content "Blog" }
    it { should have_title("Blog | #{base_title}") }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content "Contact" }
    it { should have_title("Contact | #{base_title}") }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Donate"
    expect(page).to have_title("Donate | #{base_title}")
    click_link "Thailand"
    expect(page).to have_title("Thailand | #{base_title}")
    click_link "India"
    expect(page).to have_title("India | #{base_title}")
    click_link "Blog"
    expect(page).to have_title("Blog | #{base_title}")
    click_link "Contact"
    expect(page).to have_title("Contact | #{base_title}")
  end
end
