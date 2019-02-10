class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters

    # has_many :characters =
    # def characters
    #     Characters.all.find do |character|
    #         character.actor_id == self.id
    #     end
    # end

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        # returns an array of all instances true for #characters
        characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end

end
