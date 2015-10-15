class Software < ActiveRecord::Base
  self.table_name = "software"
   
  has_many :customizings , class_name: "Customizing", foreign_key: "software_id" # Tabellenbeziehungen
end
