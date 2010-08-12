require 'test_helper'

class GhcsesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Ghcsis.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Ghcsis.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Ghcsis.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ghcsis_url(assigns(:ghcsis))
  end
  
  def test_edit
    get :edit, :id => Ghcsis.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Ghcsis.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ghcsis.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Ghcsis.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ghcsis.first
    assert_redirected_to ghcsis_url(assigns(:ghcsis))
  end
  
  def test_destroy
    ghcsis = Ghcsis.first
    delete :destroy, :id => ghcsis
    assert_redirected_to ghcses_url
    assert !Ghcsis.exists?(ghcsis.id)
  end
end
