class Price < ApplicationRecord
  belongs_to :literature
  belongs_to :currency
end
