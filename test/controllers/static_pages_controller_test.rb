require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:riku)
  end

  test "should get index" do
    get static_pages_index_url
      assert_response :success
      assert_select 'span', "riku"
  end
end
