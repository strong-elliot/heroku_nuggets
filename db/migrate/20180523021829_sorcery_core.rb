class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :digits
      t.string :cell_carrier
      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
