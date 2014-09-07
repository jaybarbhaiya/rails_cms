class CreateTopicContents < ActiveRecord::Migration
  def up
    create_table :topic_contents do |t|
      t.integer "header_id"
      t.string "content_header"
      t.integer "location"
      t.boolean "visibility"
      t.string "content_type"
      t.text "content"
      t.timestamps
    end
    add_index("topic_contents", "header_id")
  end
  
  def down
    drop_table :topic_contents
  end
end
