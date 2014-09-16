class Character < ActiveRecord::Base
	belongs_to :user
	has_many :char_skills

	validates :char_name, presence: true
end
