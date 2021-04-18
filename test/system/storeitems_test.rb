require "application_system_test_case"

class StoreitemsTest < ApplicationSystemTestCase
  setup do
    @storeitem = storeitems(:one)
  end

  test "visiting the index" do
    visit storeitems_url
    assert_selector "h1", text: "Storeitems"
  end

  test "creating a Storeitem" do
    visit storeitems_url
    click_on "New Storeitem"

    fill_in "Artnr", with: @storeitem.artnr
    fill_in "Description", with: @storeitem.description
    fill_in "Grammage", with: @storeitem.grammage
    fill_in "Inventory", with: @storeitem.inventory
    fill_in "Note", with: @storeitem.note
    fill_in "Price", with: @storeitem.price
    fill_in "Size", with: @storeitem.size
    fill_in "Stockyard", with: @storeitem.stockyard
    fill_in "Vendor", with: @storeitem.vendor
    click_on "Create Storeitem"

    assert_text "Storeitem was successfully created"
    click_on "Back"
  end

  test "updating a Storeitem" do
    visit storeitems_url
    click_on "Edit", match: :first

    fill_in "Artnr", with: @storeitem.artnr
    fill_in "Description", with: @storeitem.description
    fill_in "Grammage", with: @storeitem.grammage
    fill_in "Inventory", with: @storeitem.inventory
    fill_in "Note", with: @storeitem.note
    fill_in "Price", with: @storeitem.price
    fill_in "Size", with: @storeitem.size
    fill_in "Stockyard", with: @storeitem.stockyard
    fill_in "Vendor", with: @storeitem.vendor
    click_on "Update Storeitem"

    assert_text "Storeitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Storeitem" do
    visit storeitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Storeitem was successfully destroyed"
  end
end
