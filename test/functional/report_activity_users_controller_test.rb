require 'test_helper'

class ReportActivityUsersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ReportActivityUser.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ReportActivityUser.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ReportActivityUser.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to report_activity_user_url(assigns(:report_activity_user))
  end

  def test_edit
    get :edit, :id => ReportActivityUser.first
    assert_template 'edit'
  end

  def test_update_invalid
    ReportActivityUser.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ReportActivityUser.first
    assert_template 'edit'
  end

  def test_update_valid
    ReportActivityUser.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ReportActivityUser.first
    assert_redirected_to report_activity_user_url(assigns(:report_activity_user))
  end

  def test_destroy
    report_activity_user = ReportActivityUser.first
    delete :destroy, :id => report_activity_user
    assert_redirected_to report_activity_users_url
    assert !ReportActivityUser.exists?(report_activity_user.id)
  end
end
