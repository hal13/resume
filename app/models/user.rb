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
  
  enum age: { teens: 1, twenties: 2, thirties: 3, forties: 4, fifties: 5, sixties: 6, unknown: 0 }
  enum gender: { male: 0, female: 1 }
  enum type: { engineer: 0, non_engineer: 1 }
  enum resume_visible: { on: true, off: false }

  def password_required?
    super if confirmed?
  end
end
