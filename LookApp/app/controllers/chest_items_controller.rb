class ChestItemsController < ApplicationController
  def create
  	@chest = current_chest
    @chest_item = @chest.chest_items.new(chest_item_params)
    @chest.save
    session[:chest_id] = @chest.id
  end

  def update
  	 @chest = current_chest
     @chest_item = @chest.chest_items.find(params[:id])
     @chest_item.update_attributes(chest_item_params)
     @chest_items = @chest.chest_items
  end

  def destroy
  	 @chest = current_chest
     @chest_item = @chest.chest_items.find(params[:id])
     @chest_item.destroy
     @chest_items = @chest.chest_items
  end

  private
  def chest_item_params
    params.require(:chest_item).permit(:app_id)
  end
end
