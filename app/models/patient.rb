class Patient < ApplicationRecord
  validates :email, :full_name, presence: true
end
