class CreateTrainedMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :trained_messages do |t|
      t.integer :message_id
      t.text :trained_response_json
      t.timestamps
    end
  end
end
