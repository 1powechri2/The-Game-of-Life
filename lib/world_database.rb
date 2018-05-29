
class WorldDatabase
  attr_reader :file

  def initialize
    @file = nil
  end

  def create(db_name)
    @file = SQLite3::Database.new db_name
  end
end
