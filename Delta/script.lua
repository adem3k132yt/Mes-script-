-- Delta/script.lua
-- Script personnalisé demandé : définition de la configuration globale
-- NOTE : Exécution distante supprimée. Si tu veux intégrer du code externe,
-- colle-le directement dans la section "-- CODE A COLLER ICI" ci‑dessous.

getgenv().Config = {
    Team = "Pirates",
    FarmConfig = {
        ["Auto Farm Level"] = true,
        ["Level Max"] = true,
        ["Out game when done all"] = true,
        ["Bypass Teleport"] = false,
        ["Double Quest(RISK)"] = true
    },
    Items = {
        ["Saber"] = true,
        ["Pole (1st form)"] = true,
        ["Skull Guitar"] = true,
        ["Cursed Dual Katana"] = true,
        ["Godhuman"] = true,
        ["Superhuman"] = true,
        ["Death Step"] = true,
        ["Sharkman Karate"] = true,
        ["Electric Claw"] = true,
        ["Dragon Talon"] = true,
        ["True Triple Katana"] = true,
        ["Rengoku"] = true,
        ["Yama"] = true,
        ["Tushita"] = true,
        ["Canvander"] = true,
        ["Buddy Sword"] = true,
        ["Spikey Trident"] = true,
        ["Dark Dagger"] = true,
        ["Hallow Scythe"] = true,
        ["Soul Guitar"] = true,
        ["Acidum Rifle"] = true,
        ["Kabucha"] = true,
        ["Serpent Bow"] = true,
        ["Bizarre Rifle"] = true
    },
    ["Sea Events"] = {
        ["Enabled"] = true,
        ["Sea Beast"] = true,
        ["Terror Shark"] = true,
        ["Piranha"] = true,
        ["Fish Crew"] = true,
        ["Ghost Ship"] = true,
        ["Leviathan"] = true,
        ["Dodge Attacks"] = true
    },
    ["Fruit Config"] = {
        ["Auto Teleport Fruit"] = true,
        ["Auto Store Fruit"] = true,
        ["Auto Random Fruit"] = true,
        ["Bring Fruit"] = true
    },
    ["Fruit Rain & Eat"] = {
        ["Enabled"] = true,
        ["Auto Eat"] = true,
        ["Eat Selected Only"] = true,
        ["Eat List"] = {
            ["Kitsune"] = true,
            ["Dragon"] = true,
            ["Leopard"] = true,
            ["Dough"] = true,
            ["T-Rex"] = true,
            ["Portal"] = true,
            ["Buddha"] = true,
            ["Venom"] = true,
            ["Spirit"] = true,
            ["Blizzard"] = true
        }
    },
    Webhook = {
        ["Enabled"] = false,
        ["Url"] = "",
        ["Name"] = "adem",
        ["Image"] = "",
        ["Color"] = 16737024,
        ["Theme"] = "Neon Orange"
    }
}

-- =========================
-- CODE A COLLER ICI (OPTIONNEL)
-- Si tu veux exécuter du code que tu fournis, colle le bloc ci‑dessous entre
-- les marqueurs et décommente l'appel à loadstring. Ne colle PAS d'URL externe.
-- =========================

--[[
local user_code = [[
-- colle ton script ici, par ex. fonctions qui utilisent getgenv().Config
]]

local ok, err = pcall(function() loadstring(user_code)() end)
if not ok then
    warn("Erreur lors de l'exécution du code collé: " .. tostring(err))
end
]]

-- Fin du fichier. Si tu veux que j'insère le contenu de ton pastebin directement,
-- colle-le ici ou dis "intègre paste" et je l'ajouterai (après vérification si tu veux).
