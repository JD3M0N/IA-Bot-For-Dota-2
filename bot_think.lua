function BotThink()
    local npcBot = GetBot()
    
    -- Si el bot está muerto, no hacer nada
    if npcBot:IsAlive() == false then
        return
    end
    
    -- Si el bot está en la fuente, moverlo al carril medio
    if npcBot:GetLocation() == npcBot:GetTeamFountain() then
        npcBot:Action_MoveToLocation(Vector(0, 0, 0))
        return
    end
    
    -- Si hay creeps enemigos cerca, atacarlos
    local enemyCreeps = npcBot:GetNearbyCreeps(800, true)
    if #enemyCreeps > 0 then
        npcBot:Action_AttackUnit(enemyCreeps[1], true)
        return
    end
    
    -- Si no hay creeps enemigos, mover al bot hacia adelante en el carril
    npcBot:Action_MoveToLocation(Vector(0, 0, 0))
end