require 'test_helper'

class CryptoControllerTest < ActionDispatch::IntegrationTest
  test "should get encrypt" do
    get crypto_encrypt_url
    assert_response :success
  end

  test "should get decrypt" do
    get crypto_decrypt_url
    assert_response :success
  end

end
