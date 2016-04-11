class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.integer :age
      t.string :password_digest
      t.string :picture_file_name

      t.timestamps null: false
    end
  end
end
