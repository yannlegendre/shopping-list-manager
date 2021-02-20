# == Schema Information
#
# Table name: items
#
#  id            :bigint           not null, primary key
#  checked       :boolean
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ingredient_id :bigint           not null
#  list_id       :bigint           not null
#
# Indexes
#
#  index_items_on_ingredient_id  (ingredient_id)
#  index_items_on_list_id        (list_id)
#
# Foreign Keys
#
#  fk_rails_...  (ingredient_id => ingredients.id)
#  fk_rails_...  (list_id => lists.id)
#
class Item < ApplicationRecord
  belongs_to :list
  belongs_to :ingredient
end
