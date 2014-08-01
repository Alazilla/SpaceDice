class User < ActiveRecord::Base
	has_many :characters
	
	validates :username, presence: true, uniqueness: true 
end
