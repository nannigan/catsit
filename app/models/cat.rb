class Cat < ActiveRecord::Base
	belongs_to :user
	has_many :photos


# validates :name, :presence => true, length: 3..60
# validates :description, :presence => true  
# validates :address, :presence => true

 accepts_nested_attributes_for :photos, :reject_if => :all_blank, :allow_destroy => true
end
