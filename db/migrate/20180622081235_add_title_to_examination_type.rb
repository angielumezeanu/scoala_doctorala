class AddTitleToExaminationType < ActiveRecord::Migration[5.1]
  def change
    add_column :examination_types, :title, :string, :after => :name
  end
end
