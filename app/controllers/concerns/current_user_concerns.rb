module CurrentUserConcerns
    extend ActiveSupport::Concern

    def current_user
        super || guest_user
    end

    def guest_user
        # Utilizado para gerar dados locais sem salvar no banco de dados
        # OpenStruct.new(name: "Visitante")

        guest = GuestUser.new
        guest.name = "Guest User"
        guest.first_name = "Guest"
        guest.last_name = "User"
        # guest.email = "guest@example.com"
        guest
    end
end