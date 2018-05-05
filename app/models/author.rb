# frozen_string_literal: true

class Author < ApplicationRecord
  def discount
    10
  end
  has_many :books, inverse_of: :author, dependent: :destroy
  has_many :published, inverse_of: :publisher, foreign_key: :publisher_id, class_name: "Book", as: :publisher, dependent: :destroy
end
