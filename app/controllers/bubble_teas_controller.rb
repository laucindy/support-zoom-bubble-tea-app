class BubbleTeasController < ApplicationController
  # display all bubble tea options
  def index
    @bubble_teas = BubbleTea.all
    render json: @bubble_teas
  end

  # display a specific bubble tea drink
  def show
    @bubble_tea = BubbleTea.find(params[:id])
    render json: @bubble_tea
  end

  # create a new bubble tea drink
  def create
    @bubble_tea = BubbleTea.new(bubble_tea_params)

    if @bubble_tea.save
      # successful bubble tea drink creation
      render plain: "Successfully saved drink!"
    else
      render plain: "Failed to save drink."
    end
  end

  # update a specific bubble tea drink
  def update
    @bubble_tea = BubbleTea.find(params[:id])

    if @bubble_tea.update(bubble_tea_params)
      render plain: "Successfully updated drink information!"
    else
      render plain: "Failed to update drink information"
    end
  end

  # delete a specific store
  def destroy
    bubble_tea_id = params[:id]
    drink = BubbleTea.find(bubble_tea_id)
    drink.destroy
    render plain: "Deleted #{drink.flavor} - #{drink.size} from database (id: #{bubble_tea_id})"
  end

  private

  def bubble_tea_params
    params.require(:bubble_tea).permit(:flavor, :size, :price)
  end
end
