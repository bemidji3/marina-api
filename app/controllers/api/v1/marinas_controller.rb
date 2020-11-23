class Api::V1::MarinasController < ApplicationController
  before_action :find_marina

  def index
    @marinas = Marina.all
    render json: @marinas
  end

  def show
    render json: @marina
  end

  def create
    @marina = Marina.new(marina_params)
    if @marina.save
      render json: @marina
    else
      render error: { error: 'Unable to create Marina!' }, status: 400
    end
  end

  def update
    if @marina
      @marina.update(boat_params)
      render json: { message: 'Marina successfully updated'}, status: 200
    else
      render error: { error: 'Unable to create boat!' }, status: 400
    end
  end

  def destroy
    if @marina
      @marina.destroy
      render json: { message: 'Marina destroyed!' }, status: 200
    end
  end


  private

  def marina_params
    params.permit(:name, :slips)
  end

  def find_marina
    @marina = Marina.find(params[:id])
  end
end
