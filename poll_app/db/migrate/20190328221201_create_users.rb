class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, unique: true, presence: true
      t.integer :authored_poll
      t.timestamps
    end
  end
end
