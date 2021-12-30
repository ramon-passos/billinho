require "test_helper"

class Api::V1::EnrollmentsControllerTest < ActionDispatch::IntegrationTest
  test "/api/v1/enrollments should return 200" do
    get api_v1_enrollments_path
    assert_equal 200, @response.status
  end
end
