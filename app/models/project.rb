class Project < ApplicationRecord
  validates :description, :client, presence: true
  validates :price_in_cents, numericality: {only_integer: true, greater_than: 0}
  validates :date, presence: true
  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    format("% .2f", price_in_dollars)
  end

end
