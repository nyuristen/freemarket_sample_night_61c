class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, null: false, default: '', limit: 15	
	  add_column :users, :f_name_kanji, :string, null: false, default: '', limit: 15
	  add_column :users, :l_name_kanji, :string, null: false, default: '', limit: 15
	  add_column :users, :f_name_kana, :string, null: false, default: '', limit: 15
	  add_column :users, :l_name_kana, :string, null: false, default: '', limit: 15
	  add_column :users, :birth_day, :date, null: false
	  add_column :users, :telephone, :integer, null: false, unique: true


  end
end
