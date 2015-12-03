class ChestItem < ActiveRecord::Base
  belongs_to :app
  belongs_to :chest

  before_save :finalize

  def price
    if persisted?
      self[:price]
    else
      app.price
    end
  end
	private
   		def finalize
    	self[:price] = price
    	
    end
end
