class Api::V1::PaymentsController < Api::V1::ApiController
  def index
    @payments = Payment.all
    render json: @payments
  end

  def show
    @payment = Payment.find(params[:id])
    render json: @payment
  end

end
