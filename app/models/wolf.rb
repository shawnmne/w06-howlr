class Wolf <ActiveRecord::Base

	validates :name, presence: true
	validates :image, presence: true
	validates :description, presence: true 

	has_many :howls


end