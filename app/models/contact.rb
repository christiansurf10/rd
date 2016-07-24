class Contact < ApplicationRecord

   def self.by_nome(nome)
    return scoped unless nome.present?
    where(' nome like ?',  nome)
  end
  def self.by_email(email)
    return scoped unless email.present?
    where(' email like ?',  email)
  end
 
 
scope :search_like , lambda {|nome , email, idade, operador_nome_email, operador_email_idade, operador_aritmetico_idade |where('nome   like ?  '+ 
    operador_nome_email  + ' email like ?  ' + 
    operador_email_idade + ' idade '+ operador_aritmetico_idade + ' ?' , "#{nome}",  "#{email}", "#{idade}")}


scope :search_email, lambda {|email| where('email like ?' , "#{email}%")}
scope :with_email, lambda{|parameter| where('email like ?', "#{parameter}%")}

end

