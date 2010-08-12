require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Usuario.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Usuario.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Usuario.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to usuario_url(assigns(:usuario))
  end
  
  def test_edit
    get :edit, :id => Usuario.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Usuario.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Usuario.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Usuario.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Usuario.first
    assert_redirected_to usuario_url(assigns(:usuario))
  end
  
  def test_destroy
    usuario = Usuario.first
    delete :destroy, :id => usuario
    assert_redirected_to usuarios_url
    assert !Usuario.exists?(usuario.id)
  end
end
