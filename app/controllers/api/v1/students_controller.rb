class Api::V1::StudentsController < Api::V1::ApiController
  def index
    @students = Student.all
    render json: @students
  end
end
