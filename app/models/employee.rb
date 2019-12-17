class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true # { message: "Alias already exists. Please enter a unique alias."}
  validates :title, uniqueness: true # { message: "Title already exists. Please enter a unique title."}

end

