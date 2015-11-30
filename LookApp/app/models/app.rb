class App < ActiveRecord::Base
	validates :appID, presence: true, length: { minimum: 1}
	has_many :ratings

	def self.search(query)
		where("name like ?", "%#{query}%")
	end
end
