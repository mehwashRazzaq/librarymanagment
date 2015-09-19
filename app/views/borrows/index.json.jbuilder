json.array!(@borrows) do |borrow|
  json.extract! borrow, :id, :idate, :rdate, :book_id, :member_id
  json.url borrow_url(borrow, format: :json)
end
