feature 'Homepage' do
  scenario 'It shows a list of bookmarks' do
    visit('/')
    expect(page).to have_content("List")
  end
end
