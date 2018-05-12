class CreateMailingSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :mailing_schedules do |t|
      t.string :mail_id
      t.date :drop_date
      t.integer :30_group
      t.integer :60_group
      t.integer :90_group

      t.timestamps
    end
  end
end
