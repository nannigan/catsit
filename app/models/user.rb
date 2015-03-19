class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

       has_many :cats
       has_many :photos 
       # from cocoon gem docs
       accepts_nested_attributes_for :cats, :reject_if => :all_blank, :allow_destroy => true
       accepts_nested_attributes_for :photos, :reject_if => :all_blank, :allow_destroy => true
      geocoded_by :address   # can also be an IP address
			after_validation :geocode     
end

