require 'bookmark'

describe Bookmark do

  it "returns the list of bookmarks" do
    con = PG.connect(dbname: 'bookmark_manager_test')
    con.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    con.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    con.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    bookmarks = Bookmark.all
    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
  end
end
