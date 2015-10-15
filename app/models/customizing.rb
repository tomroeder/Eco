class Customizing < ActiveRecord::Base
  # Datenbank gab es schon, deswegen hier Angabe der bereits existierenden Tabelle
  # self.primary_key = "id" # nicht nötig, da "id" Default ist
  # self.table_name = "customizings" # nicht nötig, da "customizings" Default ist
  
  # Tabellenbeziehungen  
  belongs_to :customizing_name, class_name: "CustomizingName" , foreign_key: "name_id"
  belongs_to :freigabe_status, class_name: "FreigabeStatus" , foreign_key: "freigabe_status_id"
  belongs_to :software, class_name: "Software" , foreign_key: "software_id"
end
