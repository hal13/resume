# == Schema Information
#
# Table name: user_searches
#
#  id                :integer          not null, primary key
#  column_for_search :string(2048)     default("")
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_resume_id    :integer
#

class UserSearch < ApplicationRecord
	belongs_to :users
end
