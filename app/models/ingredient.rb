# == Schema Information
#
# Table name: ingredients
#
#  id         :bigint           not null, primary key
#  min_stock  :integer
#  name       :string
#  rotation   :boolean
#  shortage   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  unit_id    :bigint           not null
#
# Indexes
#
#  index_ingredients_on_unit_id  (unit_id)
#
# Foreign Keys
#
#  fk_rails_...  (unit_id => units.id)
#
class Ingredient < ApplicationRecord
  belongs_to :unit

  scope :rotation, ->{ where(rotation: true) }
  scope :sorted,   ->{ order(:name) }
end
