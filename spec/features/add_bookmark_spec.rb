

feature 'add bookmark' do
  scenario 'added bookmark displaying on page' do
    ('/bookmarks')
    fill_in :add_bookmark, with: 'http//:www.bbc.com'
    click_button 'Add'
    expect(page).to have_content 'http//:www.bbc.com'
  end
end