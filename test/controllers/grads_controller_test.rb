require 'test_helper'

class GradsControllerTest < ActionController::TestCase
  setup do
    @grad = grads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grad" do
    assert_difference('Grad.count') do
      post :create, grad: { email: @grad.email, first_name: @grad.first_name, graduation_date: @grad.graduation_date, last_name: @grad.last_name, notes: @grad.notes, student_num: @grad.student_num }
    end

    assert_redirected_to grad_path(assigns(:grad))
  end

  test "should show grad" do
    get :show, id: @grad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grad
    assert_response :success
  end

  test "should update grad" do
    patch :update, id: @grad, grad: { email: @grad.email, first_name: @grad.first_name, graduation_date: @grad.graduation_date, last_name: @grad.last_name, notes: @grad.notes, student_num: @grad.student_num }
    assert_redirected_to grad_path(assigns(:grad))
  end

  test "should destroy grad" do
    assert_difference('Grad.count', -1) do
      delete :destroy, id: @grad
    end

    assert_redirected_to grads_path
  end
end
