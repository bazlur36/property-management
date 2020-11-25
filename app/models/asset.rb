class Asset < ApplicationRecord
  has_one_attached :image
  scope :sorted,    -> { order("created_at DESC")}
  scope :available, -> {where(is_sold: false)}
  after_commit :add_default_image, on: [:create, :update]

  def image_path
    ActiveStorage::Blob.service.path_for(image.key)
  end

  private
  def add_default_image
    unless image.attached?
      self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", "default.png")), filename: 'default.png' , content_type: "image/png")
    end
  end

end
