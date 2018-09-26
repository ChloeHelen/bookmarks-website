require 'bookmarks'

describe Bookmarks do

  describe '#all' do
    it 'should return a list of bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include "test1"
      expect(bookmarks).to include "test2"
      expect(bookmarks).to include "test3"
    end
  end

  describe '#add' do
    it 'allows a user to add a bookmark' do
      Bookmarks.add("added_bookmark")
      expect(Bookmarks.all).to include "added_bookmark"
    end
  end

end
