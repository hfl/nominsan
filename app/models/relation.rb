class Relation < ApplicationRecord
  belongs_to :literature
  belongs_to :relation_type
end
