class CartController < ApplicationController
  def show
  	@chest_items = chest_items
  end
end
