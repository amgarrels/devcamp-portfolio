module Placeholder
  # loads helper modules
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end
end
