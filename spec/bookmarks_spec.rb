require 'bookmarks'
require 'database_helpers'

describe Bookmark do
  describe '#all' do
    it 'shows all the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url:'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url:'http://www.destroyallsoftware', title: 'Destroy All Software')
      Bookmark.create(url:'http://www.google.com', title: 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '#self.create' do

    it 'adds a new bookmark nto the database' do
      bookmark = Bookmark.create(url:'http://www.example.com', title:'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.example.com'
    end
  end

   
  describe '#self.delete' do
    it 'deletes a bookmark' do
      bookmark = Bookmark.create(title: 'Test Bookmark', url: 'http://www.example.com')
      Bookmark.delete(id: bookmark.id) 


      expect(Bookmark.all.length).to eq 0
      
    end
  end



end
