# == Schema Information
#
# Table name: lists
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class List < ApplicationRecord
end
