class App < ActiveRecord::Base
	validates :appID, presence: true, length: { minimum: 1}
	
end
