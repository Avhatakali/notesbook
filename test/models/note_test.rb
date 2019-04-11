require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:avha)
    @note = @user.notes.build(content: "This is notes.")
  end

  test "note should be valid" do
    assert @note.valid?
  end

  test "user id should be present" do
    @note.user_id = nil
    assert_not @note.valid?
  end

  test "content should be present" do
    @note.content = "  "
    assert_not @note.valid?
  end

  test "content should be at most 140 characters" do
    @note.content = "a" * 141
    assert_not @note.valid?
  end

  test "order should be most recent first" do
    assert_equal  notes(:most_recent), Note.first
  end
end
