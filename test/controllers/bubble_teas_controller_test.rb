require 'test_helper'

class BubbleTeasControllerTest < ActionDispatch::IntegrationTest
  def setup
    @regular_drink = bubble_teas(:hk_milk_tea_regular)
    @chatime_toronto = stores(:chatime_toronto)
  end

  test "index page shows correct total" do
    get bubble_teas_path(@chatime_toronto)
    assert_response :success
    assert_equal 2, BubbleTea.all.count
  end

  test "successfully shows specific drink" do
    expected_response = {
      "id" => @regular_drink.id,
      "flavor" => "HK Milk Tea",
      "size" => "Regular",
      "price" => 7.99,
      "store" => {
        "id" => @chatime_toronto.id,
        "name" => "Chatime",
        "address" => "132 Dundas St W",
        "city" => "Toronto",
        "brand" => "Chatime"
      }
    }
    get bubble_tea_path(@regular_drink), as: :json
    assert_response :success
    assert_equal(expected_response, response.parsed_body)
  end

  test "successfully create a new drink" do
    total_drinks = BubbleTea.all.count
    post bubble_teas_path(@chatime_toronto), params: {"bubble_tea": { "flavor": "Mango Slush", "size": "Large", "price": 8.99, "store_id": @chatime_toronto.id }}
    assert_response :success
    assert_equal total_drinks + 1, BubbleTea.all.count
  end

  test "sucessfully update drink" do
    patch bubble_tea_path(@regular_drink), params: {"bubble_tea": { "flavor": "Mango Slush" }}
    assert_response :success
    assert_equal "Mango Slush", BubbleTea.find(@regular_drink.id).flavor
  end

  test "sucessfully delete drink" do
    total_drinks = BubbleTea.all.count
    delete bubble_tea_path(@regular_drink)
    assert_response :success
    assert_equal total_drinks - 1, BubbleTea.all.count
  end
end
