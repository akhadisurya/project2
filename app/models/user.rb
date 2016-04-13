class User < ActiveRecord::Base
  has_secure_password
  # Verify that an email exists and that it does not already exist in the db
  validates :email, presence: true, uniqueness: true

  has_and_belongs_to_many :matches
  has_many :comments

  has_attached_file :picture_file_name_file_name, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture_file_name_file_name, content_type: /\Aimage\/.*\Z/
end
