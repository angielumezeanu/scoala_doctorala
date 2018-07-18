class AddOtherFieldsToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :occupation, :string, :after => :institution
    add_column :students, :thesis, :string, :after =>:matdate
    add_column :students, :payment, :string, :after => :thesis
  end
end
