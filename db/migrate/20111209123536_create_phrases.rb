class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :phrase, :unique => true
      t.string :tag
      t.integer :user_id
      t.integer :language_id

      t.timestamps
    end
    add_index :phrases, :phrase
    add_index :phrases, :tag
    add_index :phrases, :user_id
    add_index :phrases, :language_id
  end
end
