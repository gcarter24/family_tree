class Person < ApplicationRecord

scope :ordered, -> { order(last_name: :asc) }

  def full_name
    "#{first_name} #{last_name} " 
  end
end
