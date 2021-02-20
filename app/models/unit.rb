# == Schema Information
#
# Table name: units
#
#  id         :bigint           not null, primary key
#  name       :string
#  symbol     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Unit < ApplicationRecord
end
