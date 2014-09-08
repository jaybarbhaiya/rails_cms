class CreateTopics < ActiveRecord::Migration
  def up
    create_table :topics do |t|
      t.string "topic"
      t.integer "location"
      t.boolean "visibility"
      t.timestamps
    end
  end
  
  def down
    drop_table :topics
  end
end
