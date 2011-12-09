class CreateUsersLanguages < ActiveRecord::Migration
  def change
    create_table :users_languages do |t|
      t.integer :user_id
      t.integer :language_id
      t.integer :skill_id

      t.timestamps
    end
    add_index :users_languages, :user_id
    add_index :users_languages, :language_id
    add_index :users_languages, :skill_id
    end
end
