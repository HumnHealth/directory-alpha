class Doctor < ActiveRecord::Base
  belongs_to :practice
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  def to_param
    "#{id} #{name}".parameterize
  end
end
