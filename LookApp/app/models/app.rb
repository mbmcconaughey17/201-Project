class App < ActiveRecord::Base
	validates :appID, presence: true, length: { minimum: 1}
	
	def self.search(query)
		where("name like ?", "%#{query}%")
	end
end
