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
|> Enum.map(& [internal_code: "#{&1}%%fiction%%#{&1}", category: fiction_book])
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
