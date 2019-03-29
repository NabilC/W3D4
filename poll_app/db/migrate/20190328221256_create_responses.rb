class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :user_id, presence: true
      t.integer :question_id, presence: true, unique: true
      t.timestamps
    end
  end
end
