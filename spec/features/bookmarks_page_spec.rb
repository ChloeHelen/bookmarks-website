feature 'Bookmarks page' do
  scenario 'shows the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("Bookmarks")
  end
end
