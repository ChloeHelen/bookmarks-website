require 'pg'

class Bookmarks

  def self.all

    database = ENV['RACK_ENV'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'

    con = PG.connect :dbname => database , :user => 'chloemingay'

    result = con.exec "SELECT * FROM bookmark"

    result.map {|row| row['url']}

  end
end
