class Restaurant < ApplicationRecord
    searchkick

    mount_uploader :image, ImageUploader

    has_many :reviews

    validates :name, :address, :phone, :website, presence: true
    validates :phone, format: { with: /\(?\d{2}\)?[\s-]?[\s9]?\d{4}-?\d{4}\z/, message: "must be in the format (11) 98888-8888"}
    validates :website, format: { with: /\Ahttps?:\/\/.*\z/, message: "must start with http:// or https://"}
end
