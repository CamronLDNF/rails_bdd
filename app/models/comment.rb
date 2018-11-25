class Comment < ApplicationRecord
  belongs_to :article

  validates :email, email_format: { message: " address is not valid" }, allow_blank: true
end
