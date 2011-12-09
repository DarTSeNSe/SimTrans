class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :phrase, :unique => true
      t.string :tag
      t.integer :user_id

      t.timestamps
    end
    add_index :phrases, :phrase
    add_index :phrases, :tag
    add_index :phrases, :user_id
  end
end
