require "test_helper"

class Api::V1::InstitutionsControllerTest < ActionDispatch::IntegrationTest
  test "/api/v1/institutions should return 200" do
    get api_v1_institutions_path
    assert_equal 200, @response.status
  end
end
