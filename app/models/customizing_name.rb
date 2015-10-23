class CustomizingName < ActiveRecord::Base
  self.table_name = "customizing_names"
  
  # Tabellenbeziehungen für RoR bekanntgeben 
  # Bsp: customizing_name.customizings.size
  has_many :customizings , class_name: "Customizing", foreign_key: "name_id" #ok
  
  default_scope { order('customizing_names.name ASC') } 

end
