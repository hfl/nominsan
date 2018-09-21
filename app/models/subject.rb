class Subject < ApplicationRecord
  belongs_to :literature
  belongs_to :subject_type
end
