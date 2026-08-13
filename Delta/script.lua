-- Delta/script.lua
-- Configuration globale
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

-- Chargeur "sûr" pour exécuter le script distant
local url = "https://pastebin.com/raw/e3S482vW" -- remplace si besoin
local ok, content = pcall(function() return game:HttpGet(url) end)
if not ok then
    warn("Échec HttpGet: " .. tostring(content))
else
    -- Si tu veux inspecter le script avant exécution, décommente la ligne suivante :
    -- print(content)
    local runOk, err = pcall(function() loadstring(content)() end)
    if not runOk then
        warn("Erreur à l'exécution du script distant: " .. tostring(err))
    end
end
