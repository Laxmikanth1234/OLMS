class Tutorial < ActiveRecord::Base
  attr_accessible :title, :description, :category, :video_url,:video_id, :active, :paid
  before_save :save_image_url
  
  def save_image_url
    if self.video_url.present? && self.video_id.present?
      self.image_url = "http://i1.ytimg.com/vi/#{video_id}/0.jpg"
    end
  end
end
