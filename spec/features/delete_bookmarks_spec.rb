feature 'removes a bookmark' do
  scenario 'it deletes a bookmark' do
    Bookmark.create(url: 'www.website.co.uk', title: 'website title')
    visit('/bookmarks')
    expect(page).to have_link('website title', href: 'www.website.co.uk')
    first('.bookmark').click_button 'Delete'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('website title', href: 'www.website.co.uk')
  end
end
