class Sample2
  @@book_count = 0

  def initialize(title, author)
    @title = title
    @author = author
    @@book_count += 1
  end

  # インスタンスメソッド
  def description
    "Title: #{@title}, Author: #{@author}"
  end

  # クラスメソッド
  def self.book_count
    @@book_count
  end
end

book1 = Sample2.new("The Catcher in the Rye", "J.D. Salinger")
book2 = Sample2.new("To Kill a Mockingbird", "Harper Lee")

# インスタンスメソッドを呼び出す
puts book1.description
puts book2.description

# クラスメソッドを呼び出す
puts Sample2.book_count

p 'おわり'
