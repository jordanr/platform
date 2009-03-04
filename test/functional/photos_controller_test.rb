require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, :listing_id => 1
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should get new" do
    get :new, :listing_id => listings(:one).id
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post :create, :photo => { }, :listing_id => listings(:one).id
    end

    assert_redirected_to listing_photo_path(listings(:one).id, assigns(:photo))
  end

  test "should show photo" do
    get :show, :id => photos(:one).id, :listing_id => photos(:one).listing_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => photos(:one).id, :listing_id => photos(:one).listing_id
    assert_response :success
  end

  test "should update photo" do
    put :update, :id => photos(:one).id, :photo => { }, :listing_id => photos(:one).listing_id
    assert_redirected_to listing_photo_path(assigns(:photo).listing_id, assigns(:photo))
  end

  test "should destroy photo" do
    listing_id = photos(:one).listing_id
    assert_difference('Photo.count', -1) do
      delete :destroy, :id => photos(:one).id, :listing_id => photos(:one).listing_id
    end

    assert_redirected_to listing_photos_path(listing_id)
  end
end
