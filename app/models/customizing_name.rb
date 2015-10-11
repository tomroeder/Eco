class CustomizingName < ActiveRecord::Base
  self.table_name = "customizing_name"
  self.primary_key = "id"
end
