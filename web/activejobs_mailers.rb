# app/jobs/ejemplo_job.rb
class EjemploJob < ApplicationJob
    queue_as :default
  
    def perform(nombre)
      puts "Enviando correo a #{nombre}..."
      UsuarioMailer.bienvenida(nombre).deliver_later
    end
  end
  
  # app/mailers/usuario_mailer.rb
  class UsuarioMailer < ApplicationMailer
    default from: 'no-reply@miapp.com'
  
    def bienvenida(nombre)
      @nombre = nombre
      mail(to: "#{nombre}@example.com", subject: "Bienvenido a la app")
    end
  end
  
  # Usando el job y el mailer en el controlador
  class UsuariosController < ApplicationController
    def create
      @usuario = Usuario.new(usuario_params)
      if @usuario.save
        EjemploJob.perform_later(@usuario.nombre)
        redirect_to @usuario, notice: "Usuario creado y correo enviado."
      else
        render :new
      end
    end
  end
  