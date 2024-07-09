-- custom_bot.lua

-- Variables para el movimiento circular
local centerX = 0
local centerY = 0
local radius = 1000
local angle = 0
local angleStep = 0.05

-- Función Think del bot personalizado
function customBotThink()
    -- Calcula la nueva posición
    local posX = centerX + radius * math.cos(angle)
    local posY = centerY + radius * math.sin(angle)

    -- Mueve al bot a la nueva posición
    MoveToLocation(posX, posY)

    -- Incrementa el ángulo
    angle = angle + angleStep
end

-- Función para mover al bot a una ubicación específica
function MoveToLocation(x, y)
    -- Obtiene el bot actual
    local bot = GetBot()
    local botLoc = bot:GetLocation()

    -- Mueve el bot a la nueva ubicación
    bot:Action_MoveToLocation(Vector(x, y, botLoc.z))
end
