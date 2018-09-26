require 'bookmarks'

describe Bookmarks do
  it 'should return a list of bookmarks' do
    bookmarks = Bookmarks.all
    expect(bookmarks).to include "test1"
    expect(bookmarks).to include "test2"
    expect(bookmarks).to include "test3"
  end
end
