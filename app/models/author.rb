# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  has_many :books, class_name: 'Book', foreign_key: :author_id
  string = /\A[a-zA-Z\s]+\z/
  validates :first_name, presence: true, format: { with: string }
  validates :last_name, presence: true, format: { with: string }
end
