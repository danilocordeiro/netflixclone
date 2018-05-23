class Favorite < ApplicationRecord
  belongs_to :favoriteable, polymorphic: true
  belongs_to :user
  validates :user_id, uniqueness: { scope: [:favoriteable_type, :favoriteable_id], message: "can favorite only one time per resource" }
end
