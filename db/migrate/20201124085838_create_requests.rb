class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :author, null: false
      t.string :publisher, null: false
      t.text :amazon_url, null: false
      t.text :reason, null: false
      t.datetime :on_sale, null: false

      t.timestamps
    end
  end
end
