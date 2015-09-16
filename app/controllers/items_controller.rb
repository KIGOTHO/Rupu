class ItemsController < ApplicationController
    
    def create
        @item = Item.new(item_params)
        @item.product_id = params[:product_id]

        @item.save

        redirect_to product_path(@item.product)
   end
    def show
        @item = Item.find(params[:id])
   end
    def destroy
        @item = Item.find(params[:id]).destroy
        flash.notice = "Tag '#{@item.title}' has been destroyed"
        redirect_to product_path(@item.product)
    end
    def item_params
        params.require(:item).permit(:title, :description, :price, :image_url)
end
end
  