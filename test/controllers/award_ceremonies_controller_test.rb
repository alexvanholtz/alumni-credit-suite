require 'test_helper'

class AwardCeremoniesControllerTest < ActionController::TestCase
  setup do
    @award_ceremony = award_ceremonies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:award_ceremonies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create award_ceremony" do
    assert_difference('AwardCeremony.count') do
      post :create, award_ceremony: { ceremony: @award_ceremony.ceremony, isMajor: @award_ceremony.isMajor }
    end

    assert_redirected_to award_ceremony_path(assigns(:award_ceremony))
  end

  test "should show award_ceremony" do
    get :show, id: @award_ceremony
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @award_ceremony
    assert_response :success
  end

  test "should update award_ceremony" do
    patch :update, id: @award_ceremony, award_ceremony: { ceremony: @award_ceremony.ceremony, isMajor: @award_ceremony.isMajor }
    assert_redirected_to award_ceremony_path(assigns(:award_ceremony))
  end

  test "should destroy award_ceremony" do
    assert_difference('AwardCeremony.count', -1) do
      delete :destroy, id: @award_ceremony
    end

    assert_redirected_to award_ceremonies_path
  end
end
