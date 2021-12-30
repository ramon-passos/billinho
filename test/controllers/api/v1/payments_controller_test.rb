require "test_helper"

class Api::V1::PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "/api/v1/payments should return 200" do
    get api_v1_payments_path
    assert_equal 200, @response.status
  end
end
