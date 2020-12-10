#Félix Carle-Milette 2020-11-03
class AccueilController < ApplicationController
    before_action :authenticate_user!
end