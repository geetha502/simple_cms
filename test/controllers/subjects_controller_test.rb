require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index1" do
    get subjects_index1_url
    assert_response :success
  end

end
