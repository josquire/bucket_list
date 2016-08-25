class List < ApplicationRecord
  belongs_to :bucket

  def self.category
    ['Adventure', 'Service', 'Family', 'Make', 'Read', 'Visit']
  end

end
