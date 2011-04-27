require 'test_helper'

class VmodulesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Vmodule.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Vmodule.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Vmodule.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to vmodule_url(assigns(:vmodule))
  end

  def test_edit
    get :edit, :id => Vmodule.first
    assert_template 'edit'
  end

  def test_update_invalid
    Vmodule.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Vmodule.first
    assert_template 'edit'
  end

  def test_update_valid
    Vmodule.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Vmodule.first
    assert_redirected_to vmodule_url(assigns(:vmodule))
  end

  def test_destroy
    vmodule = Vmodule.first
    delete :destroy, :id => vmodule
    assert_redirected_to vmodules_url
    assert !Vmodule.exists?(vmodule.id)
  end
end
