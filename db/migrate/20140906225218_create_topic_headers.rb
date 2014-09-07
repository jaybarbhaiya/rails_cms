class CreateTopicHeaders < ActiveRecord::Migration
  def up
    create_table :topic_headers do |t|
      t.integer "topic_id"
      t.string "header"
      t.string "lookup"
      t.integer "location"
      t.boolean "visibility"
      t.timestamps
    end
    add_index("topic_headers", "topic_id")
    add_index("topic_headers", "lookup")
  end
  
  def down
    drop_table :topic_headers
  end
end
