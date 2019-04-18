module CurrentUserConcerns
    extend ActiveSupport::Concern

    def current_user
        super || guest_user
    end

    def guest_user
        OpenStruct.new(name: "Visitante")
    end
end