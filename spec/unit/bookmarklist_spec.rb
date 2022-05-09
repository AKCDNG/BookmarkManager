require 'bookmarklist'

describe BookmarkList do
  describe '.all' do
    it 'it returns all the bookmarks' do
      bookmark_list = BookmarkList.all
      expect(bookmark_list).to include("http://www.makersacademy.com/")
      expect(bookmark_list).to include("http://www.destroyallsoftware.com/")
      expect(bookmark_list).to include("http://www.google.com/")
    end
  end
end