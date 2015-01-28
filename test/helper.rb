require 'minitest/autorun'
require 'active_record'
require 'database_cleaner'
require 'pry'

require_relative '../models/author'
require_relative '../models/author_book'
require_relative '../models/book'
require_relative '../models/cover'
require_relative '../models/library'
require_relative '../models/page'

class MiniTest::Test
  def setup
    ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => 'test/test.db'
    )

    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  def ___
    raise UnfinishedQuestion.new
  end

end

class UnfinishedQuestion < Exception
  def message
    line_number = backtrace[1].scan(/\d+/).first
    "You need to replace the ___ with an answer in your test on line #{line_number}"
  end
end