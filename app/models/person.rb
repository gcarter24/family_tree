class Person < ApplicationRecord

scope :ordered, -> { order(last_name: :asc) }
scope :filter_by_first_name, -> (first_name) { where('first_name like ?', "%#{first_name}%")}

  def full_name
    "#{first_name} #{last_name} " 
  end

  def self.search(term)
    where(["(`people`.`first_name` LIKE :term OR
      `people`.`last_name` LIKE :term OR
      `people`.`birth_date` LIKE :term OR
      `people`.`death_date` LIKE :term)", { term: "%#{term}%" }])
  end
end
