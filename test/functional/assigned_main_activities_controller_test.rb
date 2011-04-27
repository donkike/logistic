require 'test_helper'

class AssignedMainActivitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => AssignedMainActivity.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    AssignedMainActivity.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    AssignedMainActivity.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to assigned_main_activity_url(assigns(:assigned_main_activity))
  end

  def test_edit
    get :edit, :id => AssignedMainActivity.first
    assert_template 'edit'
  end

  def test_update_invalid
    AssignedMainActivity.any_instance.stubs(:valid?).returns(false)
    put :update, :id => AssignedMainActivity.first
    assert_template 'edit'
  end

  def test_update_valid
    AssignedMainActivity.any_instance.stubs(:valid?).returns(true)
    put :update, :id => AssignedMainActivity.first
    assert_redirected_to assigned_main_activity_url(assigns(:assigned_main_activity))
  end

  def test_destroy
    assigned_main_activity = AssignedMainActivity.first
    delete :destroy, :id => assigned_main_activity
    assert_redirected_to assigned_main_activities_url
    assert !AssignedMainActivity.exists?(assigned_main_activity.id)
  end
end
