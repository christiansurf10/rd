require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  fixtures :contacts 
  test " Busca por Contacts teste "  do 

  	contact_with_nome = Contacts.search(:with_nome => "Christian")
  	contact_with_nome.each do |contact|
  		assert_match /christian/,contact.nome.downcase

  end 
end
