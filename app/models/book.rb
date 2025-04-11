class Book < ApplicationRecord
  has_many :loan
  has_many :user, through: :loan
end
