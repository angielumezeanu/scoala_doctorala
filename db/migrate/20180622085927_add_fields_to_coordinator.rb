class AddFieldsToCoordinator < ActiveRecord::Migration[5.1]
  def change
    add_column :coordinators, :birthdate, :date, :after => :lastname
    add_column :coordinators, :decree, :string, :after => :birthdate
  end
end
