# == Schema Information
#
# Table name: ingredients
#
#  id         :bigint           not null, primary key
#  min_stock  :integer          default(0), not null
#  name       :string           not null
#  rotation   :boolean          default(FALSE), not null
#  shortage   :boolean          default(FALSE), not null
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

  scope :rotation,  ->{ where(rotation: true) }
  scope :shortaged, ->{ where(shortage: true) }
  scope :sorted,    ->{ order(:name) }
end
