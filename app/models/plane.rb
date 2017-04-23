class Plane < ApplicationRecord
  has_paper_trail

  enum status: %i(in_hangar waiting fly)

  scope :in_hangar, ->{ where(status: :in_hangar) }
  scope :waiting, ->{ where(status: :waiting) }
end
