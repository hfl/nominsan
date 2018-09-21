class Format < ApplicationRecord
  belongs_to :format_mime
  belongs_to :format_extent
  belongs_to :literature
end
