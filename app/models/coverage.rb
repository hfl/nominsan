class Coverage < ApplicationRecord
  belongs_to :literature
  belongs_to :coverage_type
end
