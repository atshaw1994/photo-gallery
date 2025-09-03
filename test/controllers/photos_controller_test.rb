require "test_helper"

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get photos_path
    assert_response :success
  end

  test "should get new" do
    get new_photo_path
    assert_response :success
  end

  test "should get create" do
    assert_difference("Photo.count") do
      post photos_path, params: { photo: { title: "Test Photo", image: fixture_file_upload("files/photo.jpg", "image/jpeg") } }
    end
    assert_redirected_to photos_path
  end
end
