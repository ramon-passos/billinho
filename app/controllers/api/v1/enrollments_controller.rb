class Api::V1::EnrollmentsController < Api::V1::ApiController
  def index
    @enrollments = Enrollment.all
    render json: @enrollments
  end
end
