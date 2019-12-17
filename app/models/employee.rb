class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: { message: "Alias already exists. Please enter a unique alias."}
  validates :title, uniqueness: { message: "Title already exists. Please enter a unique title."}

end

