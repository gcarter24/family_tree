class Person < ApplicationRecord

scope :ordered, -> { order(last_name: :asc) }
scope :filter_by_first_name, -> (first_name) { where('first_name like ?', "%#{first_name}%")}

  def full_name
    "#{first_name} #{last_name} " 
  end
end
