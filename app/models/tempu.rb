class Tempu < ApplicationRecord
  belongs_to :literature
  belongs_to :date_type
  belongs_to :date_xsis
end
