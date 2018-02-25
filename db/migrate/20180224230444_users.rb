class Users < ActiveRecord::Migration[5.1]
  def self.up
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :password
      t.timestamp
    end

    create_table :items do |t|
        t.string :title
        t.text :description
        t.string :image
        t.timestamp
    end
  end 
  
  def self.down
    drop_table:items
  end
end
