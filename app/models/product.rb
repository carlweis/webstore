class Product < ActiveRecord::Base
    has_attached_file :image,
      storage: :s3,
      s3_credentials: Proc.new{ |a| a.instance.s3_credentials },
      styles: {
        medium: "300x300>",
        thumb: "100x100>"
    }, default_url: "/images/:style/missing.png"

  def s3_credentials
    {
      :bucket => ENV['S3_BUCKET'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }
  end

  def display_price
    price / 100.0
  end
end
