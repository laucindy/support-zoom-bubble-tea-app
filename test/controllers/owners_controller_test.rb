require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @owner = owners(:john)
  end

  test "index page shows correct total" do
    get owners_path
    assert_response :success
    assert_equal 2, Owner.all.count
  end

  test "successfully shows specific owner" do
    expected_response = {
      "name"=>"John Smith",
      "stores"=>[
        {"id"=>260717972, "name"=>"Chatime", "address"=>"132 Dundas St W", "city"=>"Toronto", "brand"=>"Chatime"}
      ]
    }

    get owner_path(@owner), as: :json
    assert_response :success
    assert_equal(expected_response, response.parsed_body)
  end
end
