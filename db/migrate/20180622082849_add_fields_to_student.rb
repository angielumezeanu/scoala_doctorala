class AddFieldsToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :matdate, :date, :after =>:lastname
    add_column :students, :birthdate, :date, :after => :matdate
    add_column :students, :telephone, :integer, :after => :birthdate
    add_column :students, :email, :string, :after => :telephone
    add_column :students, :address, :string, :after => :email
    add_column :students, :institution, :string, :after => :address
    add_reference :students, :coordinator, foreign_key: true, :after => :institution
  end
end
