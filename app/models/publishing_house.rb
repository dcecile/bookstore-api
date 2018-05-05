# frozen_string_literal: true

class PublishingHouse < ApplicationRecord
  has_many :published, inverse_of: :publisher, as: :publisher, foreign_key: :publisher_id, class_name: "Book", dependent: :destroy
end
