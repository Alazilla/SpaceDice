class Character < ActiveRecord::Base
	belongs_to :user

	validates :char_name, presence: true
end
