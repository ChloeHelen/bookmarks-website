feature 'Bookmarks page' do
  scenario 'shows the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("test1")
    expect(page).to have_content("test2")
    expect(page).to have_content("test3")
  end
end
