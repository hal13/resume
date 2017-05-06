class Question < ApplicationRecord
	has_many :answers, foreign_key: "answer_type", dependent: :nullify
end
