feature 'Bookmarks list' do
  scenario 'shows the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("test1")
    expect(page).to have_content("test2")
    expect(page).to have_content("test3")
  end
end

feature 'User can add bookmarks' do
  scenario 'User adds one bookmark' do
    visit('/add')
    fill_in 'url', with: 'https://google.com'
    click_button 'Add'
    expect(page).to have_content('https://google.com')
  end
end
