require 'test_helper'

class AveragesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Average.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Average.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Average.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to average_url(assigns(:average))
  end

  def test_edit
    get :edit, :id => Average.first
    assert_template 'edit'
  end

  def test_update_invalid
    Average.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Average.first
    assert_template 'edit'
  end

  def test_update_valid
    Average.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Average.first
    assert_redirected_to average_url(assigns(:average))
  end

  def test_destroy
    average = Average.first
    delete :destroy, :id => average
    assert_redirected_to averages_url
    assert !Average.exists?(average.id)
  end
end
