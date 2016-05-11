
class HealthEquipmentController < ApplicationController
  def index
    #aqui eu vou exibir as entradas do banco de dados
    
    @equips = HealthEquipment.all
  end
end

