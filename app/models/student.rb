class Student < ApplicationRecord
  belongs_to :coordinator

  def complete_name
    "#{firstname} #{lastname}"
  end

  Forma = %w[Cu_taxa Fara_taxa]

  ransacker :custom_years do |args|
    query = <<-SQL
      Year(matdate)
    SQL
    Arel.sql(query)
  end
end
