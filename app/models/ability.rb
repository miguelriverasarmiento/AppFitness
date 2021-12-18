class Ability
  include CanCan::Ability

  def initialize(usuario)
    can :read, Clase, published: true
    return unless usuario.present?
    can :read, :cupoClase, Clase, usuario_id: usuario.id
    return unless usuario.admin?
    can :manage, :all
  end
end
    