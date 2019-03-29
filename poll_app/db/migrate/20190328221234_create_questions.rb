class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :question, presence: true, unique: true
      t.integer :poll_id, presence: true
      t.timestamps
    end
  end
end
