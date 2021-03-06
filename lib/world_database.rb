
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
end
