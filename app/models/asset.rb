class Asset < ApplicationRecord
  scope :sorted, -> { order("created_at DESC")}
end
