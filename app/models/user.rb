# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(128)      default(""), not null
#  encrypted_password     :string(64)       default(""), not null
#  reset_password_token   :string(64)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  confirmation_token     :string(64)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(128)
#  failed_attempts        :integer
#  unlock_token           :string(64)
#  locked_at              :datetime
#  user_name              :string(64)       default(""), not null
#  nick_name              :string(64)       default(""), not null
#  family_name            :string(64)
#  given_name             :string(64)
#  phone_number           :string(64)
#  image_file_name        :string(128)
#  image_file_url         :string(512)
#  company_name           :string(64)       default(""), not null
#  education              :string(256)      default(""), not null
#  age                    :integer          default(0)
#  gender                 :integer          default(0)
#  residential_area       :integer          default(0)
#  user_comment           :string(512)
#  user_type              :integer          default(0)
#  visible                :boolean          default(TRUE)
#  deleted                :boolean          default(FALSE)
#  deleted_at             :datetime
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :lockable
         
  has_one :user_resume, dependent: :destroy
  
  include JpPrefecture
  jp_prefecture :residential_area
  
  enum age: { unknown: 0, teens: 1, twenties: 2, thirties: 3, forties: 4, fifties: 5, sixties: 6 }
  enum gender: { male: 0, female: 1 }
  enum user_type: { engineer: 0, recruiter: 1 }
  enum visible: { show: true, not_show: false }

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@aiit.ac.jp/i
  validates :email, 
            length: { maximum: 128 }, 
            format: { with: VALID_EMAIL_REGEX, message: "はエンジニアの場合、AIITのメールアドレスのみ利用可能です。" }, if: :is_engineer?
  
  with_options if: :confirmed? do |confirm|
    confirm.validates :user_name,
              presence: true,
              length: { maximum: 64 }
    confirm.validates :nick_name,
              presence: true,
              length: { maximum: 64 }
    confirm.validates :family_name,
              length: { maximum: 64 }
    confirm.validates :given_name,
              length: { maximum: 64 }
    confirm.validates :phone_number,
              length: { maximum: 64 }
    confirm.validates :company_name,
              presence: true,
              length: { maximum: 64 }
    confirm.validates :education,
              presence: true,
              length: { maximum: 256 }
  end
            
  def password_required?
    super if confirmed?
  end
  
  def is_engineer?
    user_type == "engineer"
  end
end
