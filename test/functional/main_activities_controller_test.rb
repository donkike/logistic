require 'test_helper'

class MainActivitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MainActivity.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MainActivity.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MainActivity.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to main_activity_url(assigns(:main_activity))
  end

  def test_edit
    get :edit, :id => MainActivity.first
    assert_template 'edit'
  end

  def test_update_invalid
    MainActivity.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MainActivity.first
    assert_template 'edit'
  end

  def test_update_valid
    MainActivity.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MainActivity.first
    assert_redirected_to main_activity_url(assigns(:main_activity))
  end

  def test_destroy
    main_activity = MainActivity.first
    delete :destroy, :id => main_activity
    assert_redirected_to main_activities_url
    assert !MainActivity.exists?(main_activity.id)
  end
end
