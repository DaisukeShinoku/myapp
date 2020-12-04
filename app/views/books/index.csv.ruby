require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(id request_id title author publisher amazon_url reason on_sale book_num)
  csv << csv_column_names
  @books.each do |book|
    csv_column_values = [
      book.id,
      book.request_id,
      book.title,
      book.author,
      book.publisher,
      book.amazon_url,
      book.reason,
      book.on_sale,
      book.book_num
    ]
    csv << csv_column_values
  end
end