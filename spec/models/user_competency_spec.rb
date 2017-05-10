# == Schema Information
#
# Table name: user_competencies
#
#  id             :integer          not null, primary key
#  question_id    :integer          not null
#  answer_id      :integer
#  answer_text    :string(64)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_resume_id :integer
#

require 'rails_helper'

RSpec.describe UserCompetency, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
