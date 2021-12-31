class Api::V1::StudentsController < Api::V1::ApiController
  def index
    @students = Student.all
    render json: @students
  end

  def show
    @student = Student.find(params[:id])
    render json: @student
  end

  def create
    @student = Student.create(
      name: params[:name],
      cpf: params[:cpf],
      birth_day: Date.strptime(params[:birth_day], "%d/%m/%Y"),
      phone: params[:phone],
      gender: params[:gender],
      payment_mode: params[:payment_mode]
    )
    render json: @student
  end

end
