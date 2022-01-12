feature "adds a bookmark" do
  scenario "user adds a bookmark" do
    visit('/bookmarks')

    fill_in 'url', with: 'www.website.co.uk'
    click_on 'Create'

    expect(page).to have_content 'www.website.co.uk'
  end
end
