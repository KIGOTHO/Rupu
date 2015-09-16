class ItemsController < ApplicationController
    
    def create
        @item = Item.new(item_params)
        @item.product_id = params[:product_id]

        @item.save

        redirect_to product_path(@item.product)
end

    def item_params
        params.require(:item).permit(:title, :description, :price_to, :price_from, :price_save, :image_url)
end
end
