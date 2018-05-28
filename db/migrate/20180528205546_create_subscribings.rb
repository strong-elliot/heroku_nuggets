class CreateSubscribings < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribings do |t|
      t.references :sub, foreign_key: true
      t.references :nugget, foreign_key: true

      t.timestamps
    end
  end
end
