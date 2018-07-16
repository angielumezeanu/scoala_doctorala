class AddRemarkToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :remarks, :text, :after => :coordinator_id
  end
end
