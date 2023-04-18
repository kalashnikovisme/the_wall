class Message < ApplicationRecord
  validates :text, uniqueness: true

  after_create_commit { broadcast_append_to "messages" }
end
