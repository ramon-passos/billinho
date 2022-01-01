class Api::V1::PaymentsController < Api::V1::ApiController
  def index
    puts " PARAMS == #{params[:enrollment_id]}"
    if params[:enrollment_id] == nil
    @payments = Payment.all
    render json: @payments
    else
      @payments = Payment.where(enrollment_id: params[:enrollment_id])
      render json: @payments
    end
  end

  def show
    @payment = Payment.find(params[:id])
    render json: @payment
  end

end
