# app/models/current.rb
class Current < ActiveSupport::CurrentAttributes
  # These attributes are thread-safe and available during each request
  attribute :user, :organization
end
