class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :registration_year
      t.references :coordinator, foreign_key: true
      t.references :student, foreign_key: true
      t.string :status
      t.references :examination_type, foreign_key: true
      t.string :name
      t.date :defense_date
      t.string :comitee
      t.string :result
      t.string :remarks

      t.timestamps
    end
  end
end
