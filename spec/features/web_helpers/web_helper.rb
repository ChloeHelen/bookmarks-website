require 'pg'

def clear_database

  con = PG.connect :dbname => 'bookmark_manager_test', :user => 'chloemingay'

  con.exec "TRUNCATE bookmark"

end


def test_data

  con = PG.connect :dbname => 'bookmark_manager_test', :user => 'chloemingay'

  con.exec "INSERT INTO bookmark (url) VALUES ('test1')"
  con.exec "INSERT INTO bookmark (url) VALUES ('test2')"
  con.exec "INSERT INTO bookmark (url) VALUES ('test3')"

end
