require 'minitest/autorun'
require 'active_record'
require 'database_cleaner'
require 'pry'

require_relative './blog'
require_relative './author'
require_relative './category'
require_relative './post'
require_relative './comment'
require_relative './tag'
require_relative './tagging'

class MiniTest::Test
  def setup
    ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => './test.sqlite3'
    )

    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end
