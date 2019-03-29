class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.integer :author_id, presence: true
      t.text :title, presence: true
      t.timestamps
    end
  end
end
