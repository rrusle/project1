# == Schema Information
#
# Table name: accommodations
#
#  id         :integer          not null, primary key
#  owner_id   :integer
#  address    :text
#  image      :text
#  bedroom    :integer
#  bathroom   :integer
#  carpark    :integer
#  suburb     :string(255)
#  price      :float
#  detail     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Accommodation < ActiveRecord::Base
	belongs_to :owner
end 
