json.array!(@books) do |book|
  json.extract! book, :id,
                :id,
                :full_name,
                :short_name,
                :author
  json.year(book.year.strftime('%Y'))
end
