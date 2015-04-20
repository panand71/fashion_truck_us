require 'test_helper'

class BoutiquesControllerTest < ActionController::TestCase
  setup do
    @boutique = boutiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boutiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boutique" do
    assert_difference('Boutique.count') do
      post :create, boutique: { category: @boutique.category, city: @boutique.city, description: @boutique.description, email: @boutique.email, facebook: @boutique.facebook, instagram: @boutique.instagram, name: @boutique.name, owner_id: @boutique.owner_id, schedule: @boutique.schedule, state: @boutique.state, twitter: @boutique.twitter, website: @boutique.website }
    end

    assert_redirected_to boutique_path(assigns(:boutique))
  end

  test "should show boutique" do
    get :show, id: @boutique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boutique
    assert_response :success
  end

  test "should update boutique" do
    patch :update, id: @boutique, boutique: { category: @boutique.category, city: @boutique.city, description: @boutique.description, email: @boutique.email, facebook: @boutique.facebook, instagram: @boutique.instagram, name: @boutique.name, owner_id: @boutique.owner_id, schedule: @boutique.schedule, state: @boutique.state, twitter: @boutique.twitter, website: @boutique.website }
    assert_redirected_to boutique_path(assigns(:boutique))
  end

  test "should destroy boutique" do
    assert_difference('Boutique.count', -1) do
      delete :destroy, id: @boutique
    end

    assert_redirected_to boutiques_path
  end
end
