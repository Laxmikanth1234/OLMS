class Tutorial < ActiveRecord::Base
  attr_accessible :title, :description, :category, :video_url,:video_id
  before_save :save_image_url
  
  def save_image_url
    if video_url_present? && video_id.present?
      image_url = "http://i1.ytimg.com/vi/#{video_id}/0.jpg"
    end
  end
end
