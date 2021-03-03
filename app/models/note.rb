class Note < ApplicationRecord
  belongs_to :contact

  validate :body, presence: true
end
