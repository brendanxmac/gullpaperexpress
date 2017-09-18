class User < ApplicationRecord
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  VALID_NAME_REGEX = /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates :first_name, presence: true, format: { with: VALID_NAME_REGEX}
  validates :last_name, presence: true, format: { with: VALID_NAME_REGEX}
  validates :phone_number, presence: true
  validates :customer_type, presence: true
  validates :terms_and_conditions, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}, format: {with:
   /\b[A-Z0-9._%a-z\-]+@mail\.endicott\.edu|@endicott\.edu\z/, message: "must be an Endicott email"}
  validates :gender, presence: true


  def full_name
    return "#{first_name} #{last_name}".strip if (first_name || last_name)
    "Annonymous"
  end

end
