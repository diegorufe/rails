class CuentaController < ApplicationController
 
  def cuenta

  	if $usuario == nil
  		redirect_to "/sesion/iniciarSesion"
  	end

  end

  def datosPersonales
  end	

  def listaPedidos

  	@pedidos = Pedidos.where("idUsuario = ?",$usuario.id)
  	
  end

  def bajaCuenta
  end 

  def borrarCuenta
    Usuarios.destroy($usuario.id)
    $usuario = nil
    redirect_to "/"
  end 

end
