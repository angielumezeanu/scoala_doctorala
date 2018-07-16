class AddRemarkToCoordinator < ActiveRecord::Migration[5.1]
  def change
    add_column :coordinators, :remarks, :text, :after => :decree
  end
end
