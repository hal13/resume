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

require 'rails_helper'

RSpec.describe Question, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
