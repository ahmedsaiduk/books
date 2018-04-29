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

class Book < ApplicationRecord
  before_save :set_short_name

  belongs_to :author, class_name: 'Author', foreign_key: :author_id

  def set_short_name
    self.short_name = full_name.parameterize.underscore
  end
end
