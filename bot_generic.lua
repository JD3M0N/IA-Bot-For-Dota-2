-- bot_generic.lua

-- Incluir el script personalizado del bot
require("bots/custom_bot")

-- Función principal que se ejecuta repetidamente
function Think()
    -- Llama a la función Think del script personalizado
    customBotThink()
end
