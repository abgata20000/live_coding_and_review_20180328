class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :group_id
      t.string :name

      t.timestamps

      t.index :group_id
      t.index :name
    end
  end
end
