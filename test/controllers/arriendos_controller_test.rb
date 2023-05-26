require "test_helper"

class ArriendosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arriendo = arriendos(:one)
  end

  test "should get index" do
    get arriendos_url
    assert_response :success
  end

  test "should get new" do
    get new_arriendo_url
    assert_response :success
  end

  test "should create arriendo" do
    assert_difference("Arriendo.count") do
      post arriendos_url, params: { arriendo: {  } }
    end

    assert_redirected_to arriendo_url(Arriendo.last)
  end

  test "should show arriendo" do
    get arriendo_url(@arriendo)
    assert_response :success
  end

  test "should get edit" do
    get edit_arriendo_url(@arriendo)
    assert_response :success
  end

  test "should update arriendo" do
    patch arriendo_url(@arriendo), params: { arriendo: {  } }
    assert_redirected_to arriendo_url(@arriendo)
  end

  test "should destroy arriendo" do
    assert_difference("Arriendo.count", -1) do
      delete arriendo_url(@arriendo)
    end

    assert_redirected_to arriendos_url
  end
end
