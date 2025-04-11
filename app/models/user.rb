class User < ApplicationRecord
  has_many :loan
  has_many :book, through: :loan
end
