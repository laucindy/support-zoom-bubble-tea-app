require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  def setup
    @owner = Owner.new(name: "John Smith")
  end

  test "should be valid" do
    assert @owner.valid?
  end

  test "name should be present" do
    @owner.name = " "
    assert_not @owner.valid?
  end
end
