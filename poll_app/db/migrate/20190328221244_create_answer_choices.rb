class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.text :choice, presence: true
      t.integer :question_id, presence: true, unique: true
      t.timestamps
    end
  end
end
