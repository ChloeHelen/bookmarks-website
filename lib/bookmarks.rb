require 'pg'

class Bookmarks

  def self.all
    self.connect_db
    result = @con.exec "SELECT * FROM bookmark"
    result.map {|row| row['url']}
  end

  def self.add(url)
    self.connect_db
    @con.exec "INSERT INTO bookmark (url) VALUES ('#{url}')"
  end

  def self.connect_db
    database = ENV['RACK_ENV'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
    @con = PG.connect :dbname => database , :user => 'chloemingay'
  end

end
