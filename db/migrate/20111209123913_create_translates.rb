class CreateTranslates < ActiveRecord::Migration
  def change
    create_table :translates do |t|
      t.string :translate
      t.integer :phrase_id
      t.integer :language_id
      t.string :rating

      t.timestamps
    end
    add_index :translates, :translate
    add_index :translates, :phrase_id
    add_index :translates, :language_id
    add_index :translates, :rating
  end
end
