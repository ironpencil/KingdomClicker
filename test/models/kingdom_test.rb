require 'test_helper'

class KingdomTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @kingdom = Kingdom.new(name: "Lorem ipsum", description: "Dolor sit amet.",
                            gold: 0, user_id: @user.id)
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

  test "name should at most 16 characters" do
    @kingdom.name = "a" * 17
    assert_not @kingdom.valid?
  end
end
