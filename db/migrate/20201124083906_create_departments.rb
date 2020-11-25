class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|

      t.string :anagram, null: false
      t.string :name, null: false
      t.boolean :is_valid, default:true, null: false
      
      t.timestamps
    end
  end
end
