require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, :listing_id => listings(:one).id
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new, :listing_id => listings(:one).id
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post :create, :detail => { }, :listing_id => listings(:one).id
    end

    assert_redirected_to listing_detail_path(listings(:one).id, assigns(:detail))
  end

  test "should show detail" do
    get :show, :id => details(:one).id, :listing_id => details(:one).listing_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => details(:one).id, :listing_id => details(:one).listing_id
    assert_response :success
  end

  test "should update detail" do
    put :update, :id => details(:one).id, :detail => { }, :listing_id => details(:one).listing_id
    assert_redirected_to listing_detail_path(details(:one).listing_id, assigns(:detail))
  end

  test "should destroy detail" do
    listing_id = details(:one).listing_id
    assert_difference('Detail.count', -1) do
      delete :destroy, :id => details(:one).id, :listing_id => listing_id
    end

    assert_redirected_to listing_details_path(listing_id)
  end
end
