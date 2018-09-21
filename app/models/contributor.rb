class Contributor < ApplicationRecord
  belongs_to :literature
  belongs_to :role
end
