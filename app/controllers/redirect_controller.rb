class RedirectController < ApplicationController

def index
	paciente = Paciente.find(:first, :conditions=>["nome LIKE ?", "#{params[:path].first}%"])
	redirect_to paciente_path(paciente)
	end
end
