class Comment < ApplicationRecord
  belongs_to :article

  validates :email, email_format: { message: "Email address is not valid" }
end
