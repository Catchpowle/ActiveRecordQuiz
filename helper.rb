require 'minitest/autorun'
require 'active_record'
require 'database_cleaner'
require 'pry'

require_relative '../models/blog'
require_relative '../models/author'
require_relative '../models/category'
require_relative '../models/post'

class MiniTest::Test
  def setup
    ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => 'spec/test.sqlite3'
    )

    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end
