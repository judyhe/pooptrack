class Poop < CouchRest::Model::Base
  use_database ["pooptrack", RAILS_ENV].join("_")

  property :pooped_on, DateTime
  property :quantity, String
  property :bloody, TrueClass, :default => false
  
  timestamps!
  
  view_by :pooped_on  
  
end