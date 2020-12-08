require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  def setup
    @store = stores(:chatime_toronto)
  end

  test "should be valid" do
    assert @store.valid?
  end

  test "name should be present" do
    @store.name = " "
    assert_not @store.valid?
  end

  test "address should be present" do
    @store.address = " "
    assert_not @store.valid?
  end

  test "city should be present" do
    @store.city = " "
    assert_not @store.valid?
  end

  test "brand should be present" do
    @store.brand = " "
    assert_not @store.valid?
  end

  test "owner_id should be present" do
    @store.owner_id = " "
    assert_not @store.valid?
  end

  test "name should not be too long" do
    @store.name = "a" * 51
    assert_not @store.valid?
  end

  test "address should not be too long" do
    @store.address = "a" * 51
    assert_not @store.valid?
  end

  test "city should not be too long" do
    @store.city = "a" * 51
    assert_not @store.valid?
  end

  test "brand should not be too long" do
    @store.brand = "a" * 51
    assert_not @store.valid?
  end

  test "owner_id should not be too long" do
    @store.owner_id = ("1" * 26).to_i
    assert_not @store.valid?
  end
end
