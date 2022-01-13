require 'bookmarks'

describe Bookmark do
  describe '#all' do
    it 'shows all the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # adding the test data
      Bookmark.create('http://www.makersacademy.com')
      Bookmark.create('http://www.google.com')
      
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '#self.create' do
    let(:url) { "http://www.bbc.co.uk" }
    #let(:title) { "BBC Homepage" }

    it 'adds a new bookmark nto the database' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # adds new url and title to database
      Bookmark.create(url) #title
      expect(Bookmark.all).to include("http://www.bbc.co.uk")
      # expect(bookmarks).to include("BBC Homepage")
    end
  end

end
