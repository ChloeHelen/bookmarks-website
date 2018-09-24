require 'bookmarks'

describe Bookmarks do
  it 'should return a list of bookmarks' do
    expect(subject.all).to eq ["test.com", "test2.com", "test3.com"]
  end
end
