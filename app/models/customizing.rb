class Customizing < ActiveRecord::Base
  # Datenbank gab es schon, deswegen hier Angabe der bereits existierenden Tabelle
  self.primary_key = "id"
  self.table_name = "customizings"
  
  # Tabellenbeziehungen für RoR bekanntgeben 
  belongs_to :customizing_name, class_name: "CustomizingName" , foreign_key: "name_id"
end
