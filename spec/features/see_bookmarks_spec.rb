feature "page exists" do
  scenario "homepage has 'see bookmarks'" do
    visit("/")
    expect(page).to have_content("Bookmark Manager")
  end
end