require 'test_helper'
require 'logger'

class StoresControllerTest < ActionDispatch::IntegrationTest
  def setup
    @store = stores(:chatime_toronto)
  end

  test "index page shows correct total" do
    get stores_path
    assert_response :success
    assert_equal 2, Store.all.count
  end

  test "successfully show specific store" do
    expected_response = {
      "id" => @store.id,
      "name" => "Chatime",
      "address" => "132 Dundas St W",
      "city" => "Toronto",
      "brand" => "Chatime",
      "owner" => { "name" => "John Smith" },
      "bubble_teas" => [
        {
          "id" => bubble_teas(:hk_milk_tea_regular).id,
          "flavor" => "HK Milk Tea",
          "size" => "Regular",
          "price" => 7.99
        },
        {
          "id" => bubble_teas(:hk_milk_tea_large).id,
          "flavor" => "HK Milk Tea",
          "size" => "Large",
          "price" => 8.99
        }
      ]
    }

    get store_path(@store), as: :json
    assert_response :success
    assert_equal(expected_response, response.parsed_body)
  end

  test "successfully create a new store" do
    total_stores = Store.all.count
    post stores_path, params: {"store": { "name": "TP Tea", "address": "505 Hwy 7", "city": "Toronto", "brand": "TP Tea", "owner_id": owners(:john).id }}
    assert_response :success
    assert_equal total_stores + 1, Store.all.count
  end

  test "sucessfully update store" do
    patch store_path(@store), params: {"store": { "name": "Bubbly Tea" }}
    assert_response :success
    assert_equal "Bubbly Tea", Store.find(@store.id).name
  end

  test "sucessfully delete store" do
    total_stores = Store.all.count
    delete store_path(@store)
    assert_response :success
    assert_equal total_stores - 1, Store.all.count
  end
end
