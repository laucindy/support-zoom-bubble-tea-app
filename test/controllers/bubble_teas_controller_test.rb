require 'test_helper'

class BubbleTeasControllerTest < ActionDispatch::IntegrationTest
  def setup
    @regular_drink = bubble_teas(:hk_milk_tea_regular)
  end

  test "test index" do
    get bubble_teas_path
    assert_response :success
    assert_equal 2, BubbleTea.all.count
  end

  test "test show specific drink" do
    get bubble_tea_path(@regular_drink), as: :json
    assert_response :success
    assert_equal({ "id" => @regular_drink.id, "flavor" => "HK Milk Tea", "size" => "Regular", "price" => 7.99 }, response.parsed_body)
  end

  test "test successfully create a new drink" do
    total_drinks = BubbleTea.all.count
    post bubble_teas_path, params: {"bubble_tea": { "flavor": "Mango Slush", "size": "Large", "price": 8.99 }}
    assert_response :success
    assert_equal total_drinks + 1, BubbleTea.all.count
  end

  test "test sucessfully update drink" do
    patch bubble_tea_path(@regular_drink), params: {"bubble_tea": { "flavor": "Mango Slush" }}
    assert_response :success
    assert_equal "Mango Slush", BubbleTea.find(@regular_drink.id).flavor
  end

  test "test sucessfully delete drink" do
    total_drinks = BubbleTea.all.count
    delete bubble_tea_path(@regular_drink)
    assert_response :success
    assert_equal total_drinks - 1, BubbleTea.all.count
  end
end
