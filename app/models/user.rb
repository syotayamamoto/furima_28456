class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  VALID_PASSWORD =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
  VALID_NAME =/\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/
  VALID_NAME_KANA =/\A[ァ-ヶー－]+\z/
  validates :nickname,  presence: true 

  #validates :email, presence: true,
             #uniqueness: true, inclusion: { in: %w(@) }

  validates :password, presence: true,
            format: { with: VALID_PASSWORD,
             message: "は半角6~12文字英大文字・小文字・数字それぞれ１文字以上含む必要があります"}

  validates :first_name, presence: true , format: { with: VALID_NAME}
  validates :family_name, format: { with: VALID_NAME}
  validates :first_name_kana, format: { with: VALID_NAME_KANA}
  validates :family_name_kana, format: { with: VALID_NAME_KANA}
  validates :birth_date, presence: true
end
