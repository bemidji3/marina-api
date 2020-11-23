class Api::V1::SlipsController < ApplicationController
  def index
    @marina = Marina.find(params[:marina_id])
    @slips = @marina.slips
    render json: @slips
  end

  def update
    @slip = Slip.find_by(id: params[:id], marina_id: params[:marina_id])
    if @slip
      @slip.update(slip_params)
      render json: { message: 'Slip successfully updated'}, status: 200
    else
      render error: { error: 'Unable to create slip!' }, status: 400
    end
  end

  private

  def slip_params
    params.require(:slip).permit(:name)
  end
end
