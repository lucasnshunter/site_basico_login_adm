require 'test_helper'

class RepresentantesControllerTest < ActionController::TestCase
  setup do
    @representante = representantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:representantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create representante" do
    assert_difference('Representante.count') do
      post :create, representante: { bairro: @representante.bairro, cep: @representante.cep, cidade: @representante.cidade, cpf_cnpj: @representante.cpf_cnpj, email: @representante.email, endereco: @representante.endereco, estado: @representante.estado, logradouro: @representante.logradouro, nome_fantasia: @representante.nome_fantasia, responsavel: @representante.responsavel, status: @representante.status, telefone: @representante.telefone }
    end

    assert_redirected_to representante_path(assigns(:representante))
  end

  test "should show representante" do
    get :show, id: @representante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @representante
    assert_response :success
  end

  test "should update representante" do
    patch :update, id: @representante, representante: { bairro: @representante.bairro, cep: @representante.cep, cidade: @representante.cidade, cpf_cnpj: @representante.cpf_cnpj, email: @representante.email, endereco: @representante.endereco, estado: @representante.estado, logradouro: @representante.logradouro, nome_fantasia: @representante.nome_fantasia, responsavel: @representante.responsavel, status: @representante.status, telefone: @representante.telefone }
    assert_redirected_to representante_path(assigns(:representante))
  end

  test "should destroy representante" do
    assert_difference('Representante.count', -1) do
      delete :destroy, id: @representante
    end

    assert_redirected_to representantes_path
  end
end
