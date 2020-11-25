class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :department, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :employee_id, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :is_valid, default:true, null: false
      t.string :avatar

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :employee_id, unique: true
  end
end
