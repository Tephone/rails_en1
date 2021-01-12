require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get inquiry" do
    get contacts_inquiry_url
    assert_response :success
  end

end
