class AddOtherFieldsToCoordinator < ActiveRecord::Migration[5.1]
  def change
    add_column :coordinators, :ordin, :string
    add_column :coordinators, :sgroup, :string
    add_column :coordinators, :email, :string
    add_column :coordinators, :tel, :string
    add_column :coordinators, :address, :string
    add_column :coordinators, :institut_date, :date
    add_column :coordinators, :cnp, :string
  end
end
