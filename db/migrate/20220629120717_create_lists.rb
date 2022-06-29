class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists, id: :uuid do |t|
      t.string :name
      t.uuid :user_id

      t.timestamps
    end

    add_index :lists, :user_id
  end
end
