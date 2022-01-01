class Api::V1::EnrollmentsController < Api::V1::ApiController
  def index
    @enrollments = Enrollment.all
    render json: @enrollments
  end

  def show
    @enrollment = Enrollment.find(params[:id])
    render json: @enrollment
  end

  def create
    @enrollment = Enrollment.create!(
      full_price: params[:full_price],
      max_payments: params[:max_payments],
      due_date: params[:due_date],
      course_name: params[:course_name],
      institution_id: params[:institution_id],
      student_id: params[:student_id]
    )
    current_payment_price = @enrollment[:full_price] / @enrollment[:max_payments]
    payment_date = Date.current()
    if Date.current().day >= @enrollment[:due_date]
      payment_date = (Date.current() + 1.months).change(day: @enrollment[:due_date])
    else
      payment_date = payment_date.change(day: @enrollment[:due_date])
    end

    for pay in 1..@enrollment[:max_payments].to_i do

      @payment = Payment.create!(
        payment_price: current_payment_price,
        payment_due_date: payment_date,
        status: "Aberta",
        enrollment_id: @enrollment[:id],
      )

      payment_date = payment_date + 1.months
    end
    
    render json: @enrollment
  end
end
