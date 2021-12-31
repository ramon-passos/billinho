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
    @enrollment = Enrollment.create(
      full_price: params[:full_price],
      max_payments: params[:max_payments],
      due_date: params[:due_date],
      course_name: params[:course_name],
      institution_id: params[:institution_id],
      student_id: params[:student_id]
    )

    #Criar as faturas de acordo com max_payments

    render json: @enrollment
  end
end
