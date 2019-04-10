require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
    get root_path
    assert_template 'pages/home'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", pages_about_path
    assert_select "a[href=?]", pages_contact_path
    assert_select "a[href=?]", new_user_registration_path
    assert_select "a[href=?]", user_session_path
  end
end
