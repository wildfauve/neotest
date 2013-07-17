class Test
    
  include Mongoid::Document
  include Mongoid::Timestamps    
  
  field :name, :type => String
  field :desc, :type => String

  def self.create_it(params)
    # some NEOGRAPHY example I found!
    # Neography::Node.create("beamer_id" =>self.beamer_id, "name" => self.full_name,"email"=>self.email)
    
  end
  
  

end