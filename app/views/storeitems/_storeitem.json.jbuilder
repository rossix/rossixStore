json.extract! storeitem, :id, :artnr, :vendor, :description, :grammage, :size, :note, :inventory, :stockyard, :price, :created_at, :updated_at
json.url storeitem_url(storeitem, format: :json)
