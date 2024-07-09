-- bots_init.lua

-- Incluir el script genérico del bot
require("bots/bot_generic")

-- Función que se llama repetidamente para pensar
function BotThink()
    Think() -- Llama a la función Think de bot_generic.lua
end
