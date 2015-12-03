class App < ActiveRecord::Base
	validates :appID, presence: true, length: { minimum: 1}
	has_many :ratings
	has_many :chest_items

	def self.search(query)
		where("name like ?", "%#{query}%")
	end
end
