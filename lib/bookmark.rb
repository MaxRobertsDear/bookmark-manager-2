require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => "bookmark_manager_test"
    else
      con = PG.connect :dbname => "bookmark_manager"
    end
    
    results = con.exec "SELECT * FROM bookmarks"
    results.map { |row| row['url'] }
  end

end
