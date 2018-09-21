class Identifier < ApplicationRecord
  belongs_to :literature
  belongs_to :identifier_type
end
