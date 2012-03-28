class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :last_login
      t.boolean :administrator
      t.string :password_hash
      t.string :last_ip
      t.string :phone_number

      t.timestamps
    end
  end
end
