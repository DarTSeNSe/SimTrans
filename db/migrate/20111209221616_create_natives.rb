class CreateNatives < ActiveRecord::Migration
  def change
    create_table :natives do |t|
      t.string :nativelang
      t.integer :user_id

      t.timestamps
    end
  end
end
