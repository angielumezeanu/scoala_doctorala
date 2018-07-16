class CreateCoordinators < ActiveRecord::Migration[5.1]
  def change
    create_table :coordinators do |t|
      t.string :title
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
