class Customizing < ActiveRecord::Base
  # Datenbank gab es schon, deswegen hier Angabe der bereits existierenden Tabelle
  # self.table_name = "uebersicht"
  # self.primary_key = "name"
  self.primary_key = "id"
  self.table_name = "customizings"
end
