class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.integer :exam_id
      t.integer :uid
      t.string :des
      t.date :start_date
      t.date :complete_date
      t.integer :seq_number
      t.string :seq_version
      t.string :seq_title
      t.float :score
      t.integer :rating

      t.timestamps
    end
  end
end
