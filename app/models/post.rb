class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true

  def author
    User.find(user_id).email
  end

  def created_at_short
    created_at.strftime("%B %d, %Y")
  end

  def created_at_long
    created_at.strftime("%B %d, %Y %H:%M%p")
  end
end
