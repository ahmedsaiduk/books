# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  short_name :string
#  full_name  :string
#  year       :date
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
