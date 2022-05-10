require 'bookmarklist'

describe BookmarkList do
  describe '.all' do
    it 'it returns all the bookmarks' do

      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")
  
      bookmark_list = BookmarkList.all
      expect(bookmark_list).to include("http://www.makersacademy.com/")
      expect(bookmark_list).to include("http://www.destroyallsoftware.com/")
      expect(bookmark_list).to include("http://www.google.com/")
    end
  end
end