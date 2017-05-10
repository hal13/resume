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

require 'rails_helper'

RSpec.describe Answer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
