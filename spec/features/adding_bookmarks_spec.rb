feature "adds a bookmark" do
  scenario "user adds a bookmark" do
    visit('/bookmarks')
    fill_in 'title', with: 'website title'
    fill_in 'url', with: 'www.website.co.uk'
    click_on 'Create'
    expect(page).to have_link('website title', href: 'www.website.co.uk')
  end
end
