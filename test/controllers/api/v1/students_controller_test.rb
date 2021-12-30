require "test_helper"

class Api::V1::StudentsControllerTest < ActionDispatch::IntegrationTest
  test "/api/v1/students should return 200" do
    get api_v1_students_path
    assert_equal 200, @response.status
  end
end
