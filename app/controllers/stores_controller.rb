class StoresController < ApplicationController
  # display all stores
  def index
    @stores = Store.all
    render json: @stores
  end

  # display a specific store
  def show
    @store = Store.find(params[:id])
    render json: @store
  end

  # create a new store
  def create
    @store = Store.new(store_params)

    if @store.save
      # successful store creation
      render json: @store
    else
      render plain: "Failed to save store."
    end
  end

  # update a specific store
  def update
    @store = Store.find(params[:id])

    if @store.update(store_params)
      render json: @store.as_json(except: [:bubble_teas, :created_at, :updated_at])
    else
      render plain: "Failed to update store information"
    end
  end

  # delete a specific store
  def destroy
    store_id = params[:id]
    Store.find(store_id).destroy
    render plain: "Deleted store with id #{store_id}"
  end

  def owner
    store = Store.find(params[:id])
    render json: store.owner.name
  end

  def bubble_teas
    store = Store.find(params[:id])
    render json: store.bubble_teas
  end

  private

  def store_params
    params.require(:store).permit(:name, :address, :city, :brand, :owner_id)
  end
end
