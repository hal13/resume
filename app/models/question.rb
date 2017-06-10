# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  question_desc :string(128)      not null
#  answer_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Question < ApplicationRecord
	has_many :answers, dependent: :nullify
end
