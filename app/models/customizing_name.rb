class CustomizingName < ActiveRecord::Base
  self.table_name = "customizing_names"
  self.primary_key = "id"
  
  # Tabellenbeziehungen für RoR bekanntgeben 
  # Bsp: customizing_name.customizings.size
  has_many :customizings , class_name: "Customizing", foreign_key: "name_id" #ok
end
