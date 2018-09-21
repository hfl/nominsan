class Language < ApplicationRecord
  belongs_to :literature
  belongs_to :language_type
end
