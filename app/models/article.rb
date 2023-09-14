# frozen_string_literal: true

# Will check if title and body were give and if their lenght is bigger than 10.
class Article < ApplicationRecord
  validates :Title, :Body, presence: true, length: { minimum: 10 }
end
