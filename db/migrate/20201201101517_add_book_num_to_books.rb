class AddBookNumToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :book_num, :integer
  end
end
