require 'test_helper'

class BubbleTeaTest < ActiveSupport::TestCase
  def setup
    @regular_drink = bubble_teas(:hk_milk_tea_regular)
  end

  test "should be valid" do
    assert @regular_drink.valid?
  end

  test "flavor should be present" do
    @regular_drink.flavor = " "
    assert_not @regular_drink.valid?
  end

  test "size should be present" do
    @regular_drink.size = " "
    assert_not @regular_drink.valid?
  end

  test "price should be present" do
    @regular_drink.price = " "
    assert_not @regular_drink.valid?
  end

  test "flavor should not be too long" do
    @regular_drink.flavor = "a" * 51
    assert_not @regular_drink.valid?
  end

  test "size should not be too long" do
    @regular_drink.size = "a" * 11
    assert_not @regular_drink.valid?
  end

  test "price should not be too long" do
    @regular_drink.price = 1234.56
    assert_not @regular_drink.valid?
  end
end
