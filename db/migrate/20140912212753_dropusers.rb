class Dropusers < ActiveRecord::Migration
  def up
  	  drop_table :users

      	create_table :users do |t|
      		t.string :name
      		t.string :email
     		t.string :password_hash
      		t.string :password_salt

      		t.timestamps
  		end


  		create_table :skills do |t|
      		t.string :skill_name
      		t.string :base_stat
     		t.string :skill_desc

      		t.timestamps
  		end

  		create_table :char_skills do |t|
      		t.integer :skill_id
      		t.integer :char_id
     		t.integer :skill_rank

      		t.timestamps
  		end

  	add_column :characters, :char_kno, :integer
  	add_column :characters, :char_mec, :integer
  	add_column :characters, :char_per, :integer
  	add_column :characters, :char_tec, :integer
  	add_column :characters, :char_desc, :text
  	add_column :characters, :char_background, :text
  end

  def down
  	remove_column :characters, :char_kno
  	remove_column :characters, :char_mec
  	remove_column :characters, :char_per
  	remove_column :characters, :char_tec
  	remove_column :characters, :char_desc
  	remove_column :characters, :char_background
  end
end
