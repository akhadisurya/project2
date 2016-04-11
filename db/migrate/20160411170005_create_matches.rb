class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
