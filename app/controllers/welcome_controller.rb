class WelcomeController < ApplicationController
	before_action :authenticate_user!, only: [:list]
	def say
	end
	def index
        end
	def list
	    @user=User.all
        end
end
