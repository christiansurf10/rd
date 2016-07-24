require 'test_helper'

class PesquisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pesquisa = pesquisas(:one)
  end

  test "should get index" do
    get pesquisas_url
    assert_response :success
  end

  test "should get new" do
    get new_pesquisa_url
    assert_response :success
  end

  test "should create pesquisa" do
    assert_difference('Pesquisa.count') do
      post pesquisas_url, params: { pesquisa: { cargo: @pesquisa.cargo, email: @pesquisa.email, estado: @pesquisa.estado, idade: @pesquisa.idade, like_cargo: @pesquisa.like_cargo, like_email: @pesquisa.like_email, like_estado: @pesquisa.like_estado, like_nome: @pesquisa.like_nome, nome: @pesquisa.nome, nome_pesquisa: @pesquisa.nome_pesquisa, operador_aritmetico_idade: @pesquisa.operador_aritmetico_idade, operador_cargo: @pesquisa.operador_cargo, operador_email: @pesquisa.operador_email, operador_estado: @pesquisa.operador_estado, operador_idade: @pesquisa.operador_idade } }
    end

    assert_redirected_to pesquisa_url(Pesquisa.last)
  end

  test "should show pesquisa" do
    get pesquisa_url(@pesquisa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pesquisa_url(@pesquisa)
    assert_response :success
  end

  test "should update pesquisa" do
    patch pesquisa_url(@pesquisa), params: { pesquisa: { cargo: @pesquisa.cargo, email: @pesquisa.email, estado: @pesquisa.estado, idade: @pesquisa.idade, like_cargo: @pesquisa.like_cargo, like_email: @pesquisa.like_email, like_estado: @pesquisa.like_estado, like_nome: @pesquisa.like_nome, nome: @pesquisa.nome, nome_pesquisa: @pesquisa.nome_pesquisa, operador_aritmetico_idade: @pesquisa.operador_aritmetico_idade, operador_cargo: @pesquisa.operador_cargo, operador_email: @pesquisa.operador_email, operador_estado: @pesquisa.operador_estado, operador_idade: @pesquisa.operador_idade } }
    assert_redirected_to pesquisa_url(@pesquisa)
  end

  test "should destroy pesquisa" do
    assert_difference('Pesquisa.count', -1) do
      delete pesquisa_url(@pesquisa)
    end

    assert_redirected_to pesquisas_url
  end
end
