class User < ApplicationRecord
    #add validations for user and email
    validates :username, presence: true, 
                         uniqueness: { case_sensitive: false }, 
                         length: { minimum: 3, maximum: 25 }
    #adding regular expression that will match pattern
    #as constaint variable name
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, 
                         uniqueness: { case_sensitive: false }, 
                         length: { maximum: 105 },
                         format: { with: VALID_EMAIL_REGEX }
    #to test regular expression go to rebular.com
end