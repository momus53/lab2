class Attack < ApplicationRecord
    belongs_to :victim
    belongs_to :monster
    validate :con_miedo_mayor_a_5_no_debe_tener_victimas_menores

    def con_miedo_mayor_a_5_no_debe_tener_victimas_menores
        m = Monster.find(monster_id) #monster directamente?
        v = Victim.find(victim_id) #victim directamente?
        if(m.scare_level > 5)
            if(v.edad < 18)
                errors.add("No puede tener victimas menores de edad!")
            end
           
        end    
    end
end