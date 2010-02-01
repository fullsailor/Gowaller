class ItemsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @items = Item.all(:order=>'name ASC')
  end
  
  def new
  end
  
  def create
    if @item.save
      flash[:notice] = "Successfully created item."
      redirect_to items_url
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @item.update_attributes(params[:item])
      flash[:notice] = "Successfully updated item."
      redirect_to items_url
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @item.destroy
    flash[:notice] = "Successfully destroyed item."
    redirect_to items_url
  end
end
