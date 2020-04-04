class CreateTables < ActiveRecord::Migration[5.2]
  def change

  create_table :users do |t|
      ## Database authenticatable
      t.string :nickname, null: false, default: '', limit: 15	
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      ## Rememberable
      t.string :f_name_kanji, null: false, default: '', limit: 15
      t.string :l_name_kanji, null: false, default: '', limit: 15
      t.string :f_name_kana, null: false, default: '', limit: 15
      t.string :l_name_kana, null: false, default: '', limit: 15
      t.date :birth_day, null: false
      t.string :telephone, null: false, unique: true  
      t.string :provider
      t.string :uid
      t.datetime :remember_created_at
      t.timestamps null: false
    end
    create_table :addresses do |t|
      t.string :postal_code
      t.integer :prefecture
      t.string :city
      t.string :street
      t.string :building
      t.references :user, foreign_key: true
      t.timestamps
    end
    create_table :sns_credentials do |t|
      t.string :provider
      t.string :uid
      t.references :user, foreign_key: true
      t.timestamps
    end

    create_table :gifts do |t|
      t.string :name, null: false, default: '', limit: 40
      t.text :discription, null: false, limit: 500
      t.integer :category_id, null: false, foreign_key: true
      t.integer :brand_id, null: false, foreign_key: true
      t.integer :status_id, null: false
      t.integer :charge_id, null: false
      t.integer :how_to_ship_id, null: false
      t.integer :region_id, null: false
      t.integer :days_id, null: false
      t.integer :price, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.integer :buyer_id, foreign_key: true
      t.integer :listing_state, null: false
      t.timestamps
    end
    create_table :images do |t|
      t.integer :gift_id, null: false, foreign_key: true
      t.string :name, null: false
      t.timestamps
    end
    create_table :categories do |t|
      t.string :name, null: false
      t.string :ancestry
      t.timestamps
    end

    create_table :cards do |t|
      t.references :user, foreign_key: true, null: false
      t.string :customer_id, null: false
      t.string :card_id, null: false
      t.timestamps
    end
  end
end

class AddIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :gifts, :id
    add_index :categories, [:id, :name, :ancestry]
    add_index :brands, :id
    add_index :cards, :id
  end
end
