feature 'Viewing bookmarks' do

  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Welcome to Bookmark Manager"
  end

  scenario 'see bookmarks on the page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # adding the test data
    Bookmark.create('http://www.makersacademy.com')
    Bookmark.create('http://www.google.com')


    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
  end
end