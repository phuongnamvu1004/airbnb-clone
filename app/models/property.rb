class Property < ApplicationRecord
    # name, headline, description, address_1, address_2
    validates :name, presence: :true
    validates :headline, presence: :true
    validates :description, presence: :true
    validates :address_1, presence: :true
    validates :city, presence: :true
    validates :state, presence: :true
    validates :country, presence: :true

    monetize :price_cents, allow_nil: true
    has_many_attached :images
end
