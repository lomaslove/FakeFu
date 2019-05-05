class Listing < ApplicationRecord
    belongs_to :user
    has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.png"
    
 def can_change?(user)
    self.user == user || user.has_role?(:admin)
     
 end
                    
end
