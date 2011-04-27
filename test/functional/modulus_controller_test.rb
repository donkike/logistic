require 'test_helper'

class ModulusControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Modulus.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Modulus.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Modulus.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to modulus_url(assigns(:modulus))
  end

  def test_edit
    get :edit, :id => Modulus.first
    assert_template 'edit'
  end

  def test_update_invalid
    Modulus.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Modulus.first
    assert_template 'edit'
  end

  def test_update_valid
    Modulus.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Modulus.first
    assert_redirected_to modulus_url(assigns(:modulus))
  end

  def test_destroy
    modulus = Modulus.first
    delete :destroy, :id => modulus
    assert_redirected_to modulus_url
    assert !Modulus.exists?(modulus.id)
  end
end
