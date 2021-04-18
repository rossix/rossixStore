require "test_helper"

class StoreitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storeitem = storeitems(:one)
  end

  test "should get index" do
    get storeitems_url
    assert_response :success
  end

  test "should get new" do
    get new_storeitem_url
    assert_response :success
  end

  test "should create storeitem" do
    assert_difference('Storeitem.count') do
      post storeitems_url, params: { storeitem: { artnr: @storeitem.artnr, description: @storeitem.description, grammage: @storeitem.grammage, inventory: @storeitem.inventory, note: @storeitem.note, price: @storeitem.price, size: @storeitem.size, stockyard: @storeitem.stockyard, vendor: @storeitem.vendor } }
    end

    assert_redirected_to storeitem_url(Storeitem.last)
  end

  test "should show storeitem" do
    get storeitem_url(@storeitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_storeitem_url(@storeitem)
    assert_response :success
  end

  test "should update storeitem" do
    patch storeitem_url(@storeitem), params: { storeitem: { artnr: @storeitem.artnr, description: @storeitem.description, grammage: @storeitem.grammage, inventory: @storeitem.inventory, note: @storeitem.note, price: @storeitem.price, size: @storeitem.size, stockyard: @storeitem.stockyard, vendor: @storeitem.vendor } }
    assert_redirected_to storeitem_url(@storeitem)
  end

  test "should destroy storeitem" do
    assert_difference('Storeitem.count', -1) do
      delete storeitem_url(@storeitem)
    end

    assert_redirected_to storeitems_url
  end
end
