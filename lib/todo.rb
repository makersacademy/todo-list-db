require 'pg'
class Todo

  attr_reader :title, :body

  def initialize(title, body)
   @title = title
   @body = body
  end

  def self.all
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'todolist_test')
    else
      conn = PG.connect(dbname: 'todolist')
    end
   rows = conn.query("SELECT * FROM TODO;")
   conn.close
   rows.map { |r|
    Todo.new(r["title"], r["body"])
   }
  end

end
