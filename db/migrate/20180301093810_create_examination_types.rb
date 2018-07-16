class CreateExaminationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :examination_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
