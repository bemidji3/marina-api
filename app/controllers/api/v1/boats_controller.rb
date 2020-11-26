class Api::V1::BoatsController < ApplicationController
  before_action(only: [:show, :update, :destroy]) do
    self.boat = find_boat
  end

  def index
    @boats = Boat.all
    render json: @boats
  end

  def show
    render json: @boat
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      render json: @boat
    else
      render error: { error: 'Unable to create boat!' }, status: 400
    end
  end

  def update
    if @boat
      @boat.update(boat_params)
      render json: { message: 'Boat successfully updated'}, status: 200
    else
      render error: { error: 'Unable to create boat!' }, status: 400
    end
  end

  def destroy
    if @boat
      @boat.destroy
      render json: { message: 'Boat destroyed!', boat: boat }, status: 200
    end
  end


  private

  def boat_params
    params.require(:boat).permit(:name, :length, :color, :slip_id)
  end

  def find_boat
    @boat = Boat.find(params[:id])
  end

end
