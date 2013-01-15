class Contact < ActiveRecord::Base

	validates_presence_of :nom,
						  :message => "Le nom est obligatoire"
						  
#--------------------------------------------------------------
						  
	validates_presence_of :prenom,
						  :message => "Le prénom est obligatoire"

#--------------------------------------------------------------

	validates_presence_of :adresse,
						  :message => "L'adresse est obligatoire"

#--------------------------------------------------------------
	
	validates_presence_of :cp,
						  :message => "Le code postal est obligatoire"
	validates_length_of :cp,
						:in => 5..5,
						:allow_blank => true,
						:too_short => "Le code postal est trop court (5 chiffres min)",
						:too_long => "Le code postal est trop long (5 chiffres max)"
	validates_numericality_of :cp,
							  :on => :create,
							  :allow_blank => true,
							  :message => "Le code postal doit être composé de chiffres uniquement"

#--------------------------------------------------------------
							  
	validates_presence_of :ville,
						  :message => "La ville est obligatoire"
						  
#--------------------------------------------------------------
						  
	validates_format_of :email,
						:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
						:on => :create,
						:allow_blank => true,
						:message => "Le format de l'email est incorrect"
						  
#--------------------------------------------------------------
						  
	validates_presence_of :mobile,
						  :message => "Le téléphone mobile est obligatoire"
	validates_length_of :mobile,
						:in => 10..10,
						:allow_blank => true,
						:too_short => "Le numéro de mobile est trop court (10 chiffres min)",
						:too_long => "Le numéro de mobile est trop long (10 chiffres max)"
	validates_numericality_of :mobile,
							  :on => :create,
							  :allow_blank => true,
							  :message => "Le numéro de téléphone doit être composé de chiffres uniquement"
							  
#--------------------------------------------------------------

	validates_length_of :commentaire,
						:in => 0..500,
						:allow_blank => true,
						:too_long => "Votre commentaire ne doit pas dépasser 500 caractères"
end
