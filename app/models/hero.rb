class Hero < ApplicationRecord
  self.table_name = "heroes"
  validates :name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :alias, presence: true, length: { minimum: 2, maximum: 30 }
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 15, less_than: 1000 }
end
