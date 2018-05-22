class CreateNuggets < ActiveRecord::Migration[5.1]
  def change
    create_table :nuggets do |t|
      t.string :subject
      t.text :tidbit
      t.string :topic

      t.timestamps
    end
  end
end
