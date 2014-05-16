class User < ActiveRecord::Base
  has_secure_password
  has_many :pets

  validates :first_name, :last_name, :email, :admin, :adress_street, :adress_number,
  :location, :state, :country, :presence => true
  validates :email, :uniqueness => true
  validates :email, :format => {
		:with => %r{
   ^ # Start of string
   [0-9a-z] # First character
   [0-9a-z.+_-]+ # Middle characters
   [0-9a-z] # Last character
   @  # Separating character
   [0-9a-z] # Domain name begin
   [0-9a-z.-]+ # Domain name middle
   [0-9a-z] # Domain name end
   $ # End of string
   }xi, # Case insensitive}i,

   :message => 'Ingrese un email con formato válido'
    }



end
