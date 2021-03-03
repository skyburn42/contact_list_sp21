class Contact < ApplicationRecord
#Associations
  # belongs_to
  # has_many
  # has_one
  # has_many :through
  # has_one :through
  #   dependent
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy
#Validations
  #rule
  # confirmation
    #checks two fields and makes sure they are the same field

  # inclusion
    #attr. values are included with in a set

  # length
    #attr. length values

  # numericality
    #ensures that it is a number rules
  # presence
    # makes sure it exists
  # uniqueness
    #unique value with in the records

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 21 }


    # Callbacks , allow logic to run during an action
  #Methods
    #class Methods
 #   class Person < ActiveRecord::Base
    #     # called on a class Person.by_first_name
    #     def self.by_first_name
    #       order(:first_name)
    #     end
    #   end
    # instance methods  
    # class Person < ActiveRecord::Base
    #   # called on an instance @person.full_name
    #   def full_name
    #    "#{self.first_name} {self.last_name}"
    #   end
    # end

end
