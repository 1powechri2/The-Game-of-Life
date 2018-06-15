
class WorldDatabase
  attr_reader :file

  def initialize
    @file = nil
  end

  def create(db_name)
    @file = SQLite3::Database.new "./db/#{db_name}.db"
  end

  def drop(db_name)
    `rm ./db/#{db_name}.db`
  end

  def migrate
    @file.execute "CREATE TABLE worlds(id INT, gereration INT row_1 VARCHAR(9),
                                      row_2 VARCHAR(9), row_3 VARCHAR(9))" 
  end
end
