class AddmarkToactivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :mark, :string, :after => :result
  end
end
