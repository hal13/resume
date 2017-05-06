class Answer < ApplicationRecord
	belongs_to :questions, foreign_key: "answer_type"
end
