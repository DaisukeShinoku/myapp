class User < ApplicationRecord
  before_save   :downcase_email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_secure_password

  validates :department_id, numericality: {only_integer: true}
  validates :name, presence: true, length: {maximum: 30}
  validates :employee_id, numericality: {only_integer: true}
  validates :email, presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :is_valid, presence: true

  has_many :requests

  belongs_to :department

  private

  def downcase_email
    self.email = email.downcase
  end

end
