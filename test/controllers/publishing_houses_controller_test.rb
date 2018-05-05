# frozen_string_literal: true

require "test_helper"

class PublishingHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publishing_house = publishing_houses(:one)
  end
end
