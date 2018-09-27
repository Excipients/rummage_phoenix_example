alias Example.{Repo, Store}
alias Store.{Category, Product}

resource = Repo.insert!(%Category{
  name: "resource",
  description: "This category is for physical resources"
})

book = Repo.insert!(%Category{
  name: "book",
  description: "This category is for books!",
  parent_category: resource
})

fiction_book = Repo.insert!(%Category{
  name: "fiction_book",
  description: "This category is for fiction books",
  parent_category: book
})

history_book = Repo.insert!(%Category{
  name: "history_book",
  description: "This category is for history books",
  parent_category: book
})

physics_book = Repo.insert!(%Category{
  name: "physics_book",
  description: "This category is for physics books",
  parent_category: book
})

# Insert 5 Fictional Books
fiction_books_and_description = [
  [name: "The Alchemist", availability: true, description: "Alchemist"],
  [name: "To kill a Mocking Bird", availability: true, description: "N/A"],
  [name: "Martian", availability: false, description: "N/A"],
  [name: "The Book Thief", availability: false, description: "Book Thief"],
  [name: "The Help", availability: true, description: "Help"]
]

0..4
|> Enum.map(& [internal_code: "#{&1}xYfictionYx#{&1}", category: fiction_book, price: (&1 * 2.5) + 10.0])
|> Enum.with_index()
|> Enum.map(fn({attrs, index}) ->
  fiction_books_and_description
  |> Enum.at(index)
  |> Keyword.merge(attrs)
end)
|> Enum.each(fn(attrs) ->
  Product
  |> struct(attrs)
  |> Repo.insert!()
end)

# Insert 3 History Books
history_books_and_description = [
  [name: "Sapiens", availability: true, description: "Sapiens"],
  [name: "1776", availability: false, description: "1776"],
  [name: "The Art of War", availability: false, description: "Art of War"]
]

0..2
|> Enum.map(& [internal_code: "#{&1}xYhistoryYx#{&1}", category: history_book, price: (&1 * 1.5) + 10.0])
|> Enum.with_index()
|> Enum.map(fn({attrs, index}) ->
  history_books_and_description
  |> Enum.at(index)
  |> Keyword.merge(attrs)
end)
|> Enum.each(fn(attrs) ->
  Product
  |> struct(attrs)
  |> Repo.insert!()
end)

# Insert 5 Physics Books
physics_books_and_description = [
  [name: "QED", availability: true, description: "Feynman's theory of Light and Matter"],
  [name: "The Elegant Universe", availability: false, description: "Elegant Universe"],
  [name: "A Brief History of Time", availability: true, description: "Brief History of time"],
  [name: "The Grand Design", availability: false, description: "Grand Design"],
  [name: "A Universe from Nothing", availability: true, description: "Universe from Nothing"]
]

0..4
|> Enum.map(& [internal_code: "#{&1}xYphysicsYx#{&1}", category: physics_book, price: (&1 * 3.5) + 10.0])
|> Enum.with_index()
|> Enum.map(fn({attrs, index}) ->
  physics_books_and_description
  |> Enum.at(index)
  |> Keyword.merge(attrs)
end)
|> Enum.each(fn(attrs) ->
  Product
  |> struct(attrs)
  |> Repo.insert!()
end)
