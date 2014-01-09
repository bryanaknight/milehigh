class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :store, class_name: Leafly::Store

  validates :store_id, :body, :title, presence: true
  validates_inclusion_of :rating, :in => ['Thumbs Up', 'Thumbs Down']

  def self.most_recent(number)
    reviews = all.sort_by {|review| review.created_at}.reverse
    reviews.take(number)
  end
end
