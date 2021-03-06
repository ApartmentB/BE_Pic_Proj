class Post < ActiveRecord::Base
  belongs_to :user
  has_many :guesses

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates_presence_of :user_id
  # validates :category, inclusion: {
  #             in: ["cats", "dogs", "small things", "old rats" ],
  #             message: "must be one of cats, dogs, small things, or old rats."
  #           }
end
