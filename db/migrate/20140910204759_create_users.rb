class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :limit => 100
      t.string "username", :limit => 25
      t.string "hashed_password", :limit => 40
      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
end
