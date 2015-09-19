json.array!(@books) do |book|
  json.extract! book, :id, :tilte, :author, :rakeno, :subjectcode
  json.url book_url(book, format: :json)
end
