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

  describe "Hope House page" do
    before { visit hopehouse_path }
    it { should have_content "Hope House Children" }
    it { should have_title("Hope House Children's Home | #{base_title}") }
  end

  describe "Hope and a Future page" do
    before { visit hopeandafuture_path }
    it { should have_content "Hope and a Future" }
    it { should have_title("Hope and a Future | #{base_title}") }
  end

  describe "Next Steps page" do
    before { visit nextsteps_path }
    it { should have_content "Next Steps" }
    it { should have_title("Next Steps | #{base_title}") }
  end

  describe "Sponsorship page" do
    before { visit sponsorship_path }
    it { should have_content "Sponsorship" }
    it { should have_title("Sponsorship | #{base_title}") }
  end

  describe "Hope of Glory page" do
    before { visit hopeofglory_path }
    it { should have_content "Hope of Glory" }
    it { should have_title("Hope of Glory Children's Home | #{base_title}") }
  end

  describe "Sunshine page" do
    before { visit sunshine_path }
    it { should have_content "Sunshine" }
    it { should have_title("Sunshine School | #{base_title}") }
  end

  describe "Special Projects page" do
    before { visit specialprojects_path }
    it { should have_content "Special Projects" }
    it { should have_title("Special Projects | #{base_title}") }
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
    click_link "Hope House Children's Home"
    expect(page).to have_title("Hope House Children's Home | #{base_title}")
    click_link "Hope and a Future Learning Center"
    expect(page).to have_title("Hope and a Future | #{base_title}")
    click_link "Next Steps"
    expect(page).to have_title("Next Steps | #{base_title}")
    click_link "Sponsorship"
    expect(page).to have_title("Sponsorship | #{base_title}")
    click_link "Hope of Glory Children's Home"
    expect(page).to have_title("Hope of Glory Children's Home | #{base_title}")
    click_link "Sunshine School"
    expect(page).to have_title("Sunshine School | #{base_title}")
    click_link "Special Projects"
    expect(page).to have_title("Special Projects | #{base_title}")
    click_link "Blog"
    expect(page).to have_title("Blog | #{base_title}")
    click_link "Contact"
    expect(page).to have_title("Contact | #{base_title}")
  end
end
