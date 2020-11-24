class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.references :request, foreign_key: true
      t.string :title, null: false
      t.string :author, null: false
      t.string :publisher, null: false
      t.text :amazon_url
      t.text :reason, null: false
      t.datetime :on_sale
      t.string :cover

      t.timestamps
    end
  end
end
