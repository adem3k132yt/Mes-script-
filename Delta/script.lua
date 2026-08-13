-- Delta/script.lua
-- Script personnalisé : définition de la configuration globale
-- NOTE : Exécution distante supprimée. Ce fichier contient désormais le code utilisateur
-- intégré directement (sans URL externes). Teste d'abord sur un compte secondaire.

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
-- CODE UTILISATEUR INTÉGRÉ (SANS REQUÊTES EXTERNES)
-- Ce bloc est conçu comme un point de départ : il utilise getgenv().Config
-- et effectue des actions locales (affichage et tâches périodiques).
-- Modifie la logique interne (détection d'événements, actions de farm) selon tes besoins.
-- =========================

local function printConfigSummary()
    print("[Delta] Configuration chargée : Team =", getgenv().Config.Team)

    if getgenv().Config.FarmConfig["Auto Farm Level"] then
        print("[Delta] Auto Farm Level activé")
    end

    -- Liste rapide des items activés
    print("[Delta] Items activés :")
    for itemName, enabled in pairs(getgenv().Config.Items) do
        if enabled then
            print("  -", itemName)
        end
    end
end

local function handleSeaEvents()
    local cfg = getgenv().Config["Sea Events"]
    if not cfg or not cfg.Enabled then return end

    -- Exemple placeholder : ici tu implémentes la logique de détection et
    -- gestion des events de la mer (Sea Beast, Terror Shark, etc.).
    -- N'effectue pas d'appels réseau ni d'exfiltration.
    print("[Delta] Gestion des Sea Events (placeholder)")
    -- Exemple : scan du workspace pour un objet d'event (pseudo-code)
    -- local event = workspace:FindFirstChild("SeaEvent")
    -- if event then ... end
end

local function handleFruitRainEat()
    local cfg = getgenv().Config["Fruit Rain & Eat"]
    if not cfg or not cfg.Enabled then return end

    if cfg["Auto Eat"] then
        if cfg["Eat Selected Only"] then
            for fruit, ok in pairs(cfg["Eat List"]) do
                if ok then
                    print("[Delta] (Simulé) Manger le fruit :", fruit)
                    -- Ici : insère la logique d'utilisation de fruit (ex: Teleport vers fruit, Eat)
                end
            end
        else
            print("[Delta] Auto Eat activé pour tous les fruits (simulé)")
        end
    end
end

local function main()
    printConfigSummary()

    -- Démarrer une tâche périodique non bloquante
    spawn(function()
        while wait(5) do
            local ok, err = pcall(function()
                handleSeaEvents()
                handleFruitRainEat()
                -- Ajoute d'autres tâches périodiques ici (ex: gestion du farm)
            end)
            if not ok then
                warn("[Delta] Erreur dans la boucle principale : ", err)
            end
        end
    end)
end

pcall(main)

-- Fin du script intégré
