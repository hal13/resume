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

require 'rails_helper'

RSpec.describe UserSearch, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
