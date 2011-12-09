class CreateTranslatesPhrases < ActiveRecord::Migration
  def change
    create_table :translates_phrases, :id => false do |t|
      t.integer :phrase_id
      t.integer :translate_id

      t.timestamps
    end
    add_index :translates_phrases, :translate_id
    add_index :translates_phrases, :phrase_id
    add_index :translates_phrases, [:phrase_id, :translate_id], :unique => true
  end
end
