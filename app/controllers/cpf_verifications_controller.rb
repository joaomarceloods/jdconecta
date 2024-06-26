class CpfVerificationsController < ApplicationController
  def new
  end

  def create
    cpf = params["cpf"]
    file = File.open("lib/assets/cpfs_validos.txt")
    file_data = file.readlines.map(&:chomp)
    cpf_valid = file_data.include?(cpf)

    if cpf_valid
      redirect_to "/users/sign_up"
    else
      redirect_to "/cpf/verificar", alert: "CPF inválido"
    end
  end
end
