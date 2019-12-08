class Product < ApplicationRecord
  validates_presence_of :barcode, :title, :quantity, :description
end
