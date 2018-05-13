class CreateMailItems < ActiveRecord::Migration[5.1]
  def change
    create_table :mail_items do |t|
      t.integer :mail_id
      t.string :title
      t.integer :quantity
      t.string :data_name
      t.string :art_name
      t.text :msi_note
      t.text :note_1
      t.text :note_2
      t.boolean :complete
      t.boolean :boolean_1
      t.integer :integer_1

      t.timestamps
    end
  end
end
