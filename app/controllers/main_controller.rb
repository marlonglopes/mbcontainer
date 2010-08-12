class MainController < ApplicationController

def main
	@main=Main.all
	end

def index
	@main=Main.first
	#render :text => @main.sistemas
	end
end
