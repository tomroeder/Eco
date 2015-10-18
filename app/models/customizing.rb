class Customizing < ActiveRecord::Base
  
  # Datenbank gab es schon, deswegen hier Angabe der bereits existierenden Tabelle
  # self.primary_key = "id" # nicht nötig, da "id" Default ist
  # self.table_name = "customizings" # nicht nötig, da "customizings" Default ist
  
  # Validierungen für Formulare in View
  # http://guides.rubyonrails.org/active_record_validations.html

  # SQLite : A column declared INTEGER PRIMARY KEY will autoincrement.
  # :id, :name_id, :version, :software_id, :feature, :freigabe_status_id, :software_req_min, :software_req_max
  #validates :id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :name_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :version, presence: true
  validates :software_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :feature, presence: true
  validates :freigabe_status_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  # Tabellenbeziehungen für vereinfachte Ruby-Zugriffe auf verknüpfte Daten
  belongs_to :customizing_name, class_name: "CustomizingName" , foreign_key: "name_id"
  belongs_to :freigabe_status, class_name: "FreigabeStatus" , foreign_key: "freigabe_status_id"
  belongs_to :software, class_name: "Software" , foreign_key: "software_id"
  
   TEMPERATURES = ['hot', 'medium', 'cold']
end
