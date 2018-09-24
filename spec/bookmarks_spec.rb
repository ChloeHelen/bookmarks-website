require 'bookmarks'

describe Bookmarks do
  it 'should return a list of bookmarks' do
    expect(subject.all).to eq "Test bookmark"
  end
end
