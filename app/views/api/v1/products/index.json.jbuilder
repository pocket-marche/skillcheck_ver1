json.data do
  json.products do
    json.array! @products do |product|
      json.id product.id
      json.variants do
        json.array! product.variants do |variant|
          json.id variant.id
        end
      end
    end
  end
end
