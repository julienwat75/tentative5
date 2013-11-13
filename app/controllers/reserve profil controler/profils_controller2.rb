class ProfilsController < ApplicationController


def index

#@profils=Profil.all

#@profil=Profil.find(2)

#var=Profil.find(:all, :conditions => "nom = 'louis' ")

#@li=var[0]


@profils=Profil.new

#@profils2=Profil.all


#@profils2=Profil.find(:all,
                     # :conditions => "nom= '3'",
                      #:order      =>  "id DESC")

a=4


@profils2=Profil.find(:all,
                     :conditions => "",
                      :order      =>  "id DESC",
                      :limit      =>  10,
                       :offset      =>  a*10)     # numero de page qu on souhaite afficher
 





end


def show

end


def search

@profils=Profil.new

#@profils3=Profil.find(6)


#@profils3=Profil.find(:all,:conditions => "nom= 'louis'")

#farming="loui"

#@farming2=params[:profil]
@farming2=params[:profil][:nom]

#farming3=params[:profil]




#@profils3=Profil.find(:all,:conditions => ["nom=:nom",params[:profil]])

#@profils3=Profil.where("nom = ?", params[:profil])

#@profils3=Profil.find(:all,:conditions => ["nom like ?","loui"])

#@profils3=Profil.where("nom LIKE ?" , "%#{farming}%")   #  requette pour lister bdd en demandant les premieres lettres du nom

@profils3=Profil.where("nom LIKE ?" , "%#{@farming2}%")   #  requette pour lister bdd en demandant les premieres lettres du nom



end


end
