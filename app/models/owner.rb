# == Schema Information
#
# Table name: owners
#
#  id              :integer          not null, primary key
#  firstname       :string(255)
#  lastname        :string(255)
#  contact         :integer
#  email           :string(255)
#  image           :text
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

class Owner < ActiveRecord::Base
	has_secure_password
	has_many :accommodations
end 
