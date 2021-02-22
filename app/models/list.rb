# == Schema Information
#
# Table name: lists
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class List < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :ingredients, through: :items

  def self.active
    List.find_by(active: true)
  end
end
