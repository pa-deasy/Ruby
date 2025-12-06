class DatabaseConnection
  @instance = nil

  def self.instance
    @instance ||= DatabaseConnection.new
  end

  def initialize
    raise "Class is already initialized" if @instance
    @connection = "Database connection established"
  end

  def connect
    @connection
  end
end

db1 = DatabaseConnection.instance
db2 = DatabaseConnection.instance

p db1.connect
p db2.connect