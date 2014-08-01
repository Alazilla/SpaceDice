class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :char_name
      t.integer :user_id
      t.integer :char_age
      t.integer :char_str
      t.integer :char_dex

      t.timestamps
    end
  end
end
