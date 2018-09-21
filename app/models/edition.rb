class Edition < ApplicationRecord
  belongs_to :literature
  belongs_to :edition_type
end
