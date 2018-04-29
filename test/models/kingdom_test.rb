require 'test_helper'

class KingdomTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @kingdom = @user.build_kingdom(name: "Lorem ipsum", description: "Dolor sit amet.", gold: 0)
  end

  test "should be valid" do
    assert @kingdom.valid?
  end

  test "user id should be present" do
    @kingdom.user_id = nil
    assert_not @kingdom.valid?
  end

  test "name should be present" do
    @kingdom.name = "   "
    assert_not @kingdom.valid?
  end

  test "name should be at most 16 characters" do
    @kingdom.name = "a" * 17
    assert_not @kingdom.valid?
  end

  test "user id must be unique" do
    dup_kingdom = @kingdom.dup
    dup_kingdom.user_id = @kingdom.user_id
    @kingdom.save
    assert_not dup_kingdom.valid?
  end
end
