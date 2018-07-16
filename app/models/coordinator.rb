class Coordinator < ApplicationRecord
  def complete_name
    "#{title} #{firstname} #{lastname}"
  end
end
