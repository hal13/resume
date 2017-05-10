# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  answer_type :integer          not null
#  type_id     :integer          not null
#  answer_desc :string(64)       not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ApplicationRecord
	belongs_to :question, foreign_key: "answer_type"
end
