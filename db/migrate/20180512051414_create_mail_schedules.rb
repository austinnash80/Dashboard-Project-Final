class CreateMailSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :mail_schedules do |t|
      t.integer :mail_id
      t.date :drop_date
      t.integer :group_30
      t.integer :group_60
      t.integer :group_90

      t.timestamps
    end
  end
end
