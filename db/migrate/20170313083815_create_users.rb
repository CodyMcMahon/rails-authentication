class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true, null: false
      t.string :password_digest, null: false
      t.string :optional, null:false, default: 'left_blank'
      t.timestamps null: false
    end
    add_index :users, :name, :unique =>true
  end
end