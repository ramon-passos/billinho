class Api::V1::InstitutionsController < Api::V1::ApiController
  
  def index
    render json: @institution
  end

end
