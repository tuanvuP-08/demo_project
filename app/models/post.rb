class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true,
    length: {maximum: Settings.post_title_max_length}
  validates :content, presence: true
end
