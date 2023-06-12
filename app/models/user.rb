class User < ApplicationRecord 
        before_validation :strip_username_whitespace
        before_save :normalize_email, :normalize_username
 
    has_many :articles, dependent: :destroy
    validates :username, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: {minimum: 3, maximum: 25}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    

    validates :email, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: {maximum: 105},
            format: { with: VALID_EMAIL_REGEX }

        private
        
        
        def strip_username_whitespace
          self.username = username.strip.gsub(/\s+/, "") if username.present?
        end


        def normalize_email
          self.email = email.downcase
        end

        def normalize_username
          self.username = username.downcase
        end

    has_secure_password

end