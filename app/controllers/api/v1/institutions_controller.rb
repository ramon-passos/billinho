class Api::V1::InstitutionsController < Api::V1::ApiController
  
  def index
    @institutions = Institution.all
    render json: @institutions
  end

end
