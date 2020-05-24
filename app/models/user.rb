class User < ApplicationRecord
    attr_accessor :remember_token
    has_many :comments
    has_many :microposts
    default_scope -> { order(last_seen_at: :desc) }
    before_save{self.email=email.downcase}
    VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email,presence: true,length:{maximum:255}, format:{with:VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    has_secure_password
    validate :picture_size

    validates:password, presence: true, length: { minimum: 8 }, length: { maximum: 20 }, allow_nil: true

    validates:mobile, presence: true, length: { minimum: 10 }, length: { maximum: 13 }
    mount_uploader :picture, PictureUploader
    mount_uploader :card_image, PictureUploader
    def self.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
    def self.new_token
        SecureRandom.urlsafe_base64
    end

    def remember
        self.remember_token=User.new_token
        update_attribute(:remember_digest,User.digest(remember_token))
    end

    def authenticated?(remember_token)
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
   end
   def forget
    update_attribute(:remember_digest,nil)
  end
   private
# Validates the size of an uploaded picture.
    def picture_size
        if picture.size > 2.megabytes
            errors.add(:picture, "no larger than 2MB")
        end
    end


   
end
