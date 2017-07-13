class ItemsController < ApplicationController

  def index
    @items = Item.where(publish: true)
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create(item_params).save
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

  end

private
  def item_params
    params.require(:item).permit(:name,
                                 :description,
                                 :oldprice,
                                 :newprice,
                                 :image,
                                 :publish)
  end




end
