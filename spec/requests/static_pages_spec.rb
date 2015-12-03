require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  let(:base_title) { "Projects For Asia Charitable Foundation, Inc."}
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(page_content) }
    it { should have_title(page_title + ' | ' + base_title) }
  end

  describe "Home page" do
    before { visit root_path }
    it { should have_content("Projects For Asia") }
    it { should have_title("#{base_title}") }
  end

  describe "Donate page" do
    before { visit donate_path }
    let(:page_content)  {'Donate'}
    let(:page_title)    {'Donate'}
    it_should_behave_like 'all static pages'

  end

  describe "Sponsorship page" do
    before { visit sponsorship_path }
    let(:page_content)  {'Sponsorship'}
    let(:page_title)    {'Sponsorship'}
    it_should_behave_like 'all static pages'
  end

  describe "India" do
    before { visit india_path }
    let(:page_content)  {'India'}
    let(:page_title)    {'India'}
    it_should_behave_like 'all static pages'
  end

  describe "Blog page" do
    before { visit blog_path }
    let(:page_content)  {'Blog'}
    let(:page_title)    {'Blog'}
    it_should_behave_like 'all static pages'
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:page_content)  {'Contact'}
    let(:page_title)    {'Contact'}
    it_should_behave_like 'all static pages'
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
