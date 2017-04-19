require_relative '../menu_de_menus'
require_relative '../acciones_estudiante/menu_entregas'
class MenuPrincipalEstudiante < MenuDeMenus

  def initialize moodle
    @acciones=Hash.new
    inicializar_acciones(moodle)
  end

  def inicializar_acciones moodle
    @acciones[MenuEntregas.nombre] = MenuEntregas.new(self, moodle)
  end

  def iniciar_acciones_defecto kb
    kb <<   Telegram::Bot::Types::KeyboardButton.new( text: "Cambiar curso. Curso actual: #{@curso['nombre_curso']}", )
  end


  public_class_method :new


end
