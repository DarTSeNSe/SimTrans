class CreateTranslatesLanguages < ActiveRecord::Migration
  def change
    create_table :translates_languages, :id => false do |t|
      t.integer :language_id
      t.integer :translate_id

      t.timestamps
    end
    add_index :translates_languages, :language_id
    add_index :translates_languages, :translate_id
    add_index :translates_languages, [:language_id, :translate_id], :unique => true
  end
end
