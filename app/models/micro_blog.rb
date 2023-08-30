class MicroBlog < ApplicationRecord
  belongs_to :user

  validates_presence_of :blurb
end
