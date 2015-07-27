class User < ActiveRecord::Base
  has_one :appointment
  validates :email, presence: true, uniqueness: true, email: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def formatted_name
    "#{first_name} #{last_name}"
  end

  def stats
    "#{degree} | #{major} | #{year}"
  end

  def bullhorn_address
    "https://cls2.bullhornstaffing.com/BullhornSTAFFING/OpenWindow.cfm?Entity=Candidate&ID=#{bullhorn_id}"
  end

  def password_required?
    false
  end
end
