require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(first_name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  # test "associated notes should be destroyed" do
  #   @user.save
  #   @user.notes.create!(content: "this is note")
  #   assert_difference 'Note.count', -1 do
  #     @user.destroy
  #   end
  # end
end
