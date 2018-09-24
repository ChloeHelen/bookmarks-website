feature 'Bookmarks page' do
  scenario 'shows the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("test.com")
    expect(page).to have_content("test2.com")
    expect(page).to have_content("test3.com")
  end
end
