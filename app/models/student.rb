class Student < ApplicationRecord
  belongs_to :coordinator

  def complete_name
    "#{firstname} #{lastname}"
  end

  ransacker :custom_years do |args|
    query = <<-SQL
      Year(matdate)
    SQL
    Arel.sql(query)
  end
end
