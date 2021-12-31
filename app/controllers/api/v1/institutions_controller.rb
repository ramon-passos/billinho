class Api::V1::InstitutionsController < Api::V1::ApiController
  
  def index
    @institutions = Institution.all
    render json: @institutions
  end
  
  def show
    @institution = Institution.find(params[:id])
    puts "PARAMS === #{params}"
    render json: @institution
  end

  def create
    @institution = Institution.create(
      name: params[:name],
      cnpj: params[:cnpk],
      institution_type: params[:institution_type]
    )
    render json: @institution
  end
end
