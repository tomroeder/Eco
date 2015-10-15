class FreigabeStatus < ActiveRecord::Base
  # Datenbank gab es schon, deswegen hier Angabe der bereits existierenden Tabelle
  self.primary_key = "id"
  self.table_name = "freigabe_status"
  
  # Tabellenbeziehungen für RoR bekanntgeben 
  # Bsp: customizing_name.customizings.size
  has_many :customizings , class_name: "Customizing", foreign_key: "freigabe_status_id" #ok
end
