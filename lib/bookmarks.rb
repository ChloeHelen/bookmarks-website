require 'pg'

class Bookmarks

  def self.all

    begin

        con = PG.connect :dbname => 'bookmark_manager', :user => 'chloemingay'

        result = con.exec "SELECT * FROM bookmark LIMIT 5"

        result.map {|row| row['url']}
      end
    end
end
#chloes and shweta's breath stink
