require 'pg'

class Bookmark

  def self.all
    con = PG.connect :dbname => "bookmark_manager", :user => "student"
    results = con.exec "SELECT * FROM bookmarks"
    results.map { |row| row['url'] }
  end

end
