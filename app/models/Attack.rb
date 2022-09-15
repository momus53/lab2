class Attack < ApplicationRecord
    validates :debe_tener_nivel_de_susto_menor_a_5_para_tener_victimas_menores

    def debe_tener_nivel_de_susto_menor_a_5_para_tener_victimas_menores
        m = Monster.find(monster_id)
        v = Victim.find(victim_id)
        if (m.scare_lvl > 5 && (v.Edad < 18))
            errors.add("un monstruo de este nivel de miedo no puede tener victimas menores de edad")
        end
    end  
end