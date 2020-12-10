class OwnersController < ApplicationController
  # list all owners, and number of stores they own
  def index
    @owners = Owner.all
    render json: @owners
  end

  # show all stores associated with owner
  def show
    @owner = Owner.find(params[:id])
    render json: @owner
  end
end
