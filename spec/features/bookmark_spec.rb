require 'bookmark'

describe Bookmark do
  it "returns the list of bookmarks" do
    bookmarks = Bookmark.all
    expect(bookmarks).to include('www.netflix.com')
    expect(bookmarks).to include('www.bbc.co.uk')
    expect(bookmarks).to include('www.twitter.com')
  end
end
