CreateThread(function()
    CreateBlip(vector3(1382.897, 1140.585, 114.32), "ÖRNEK BLİP 1", 3.0, 2, 438)  
    CreateBlip2(vector3(1382.897, 1140.585, 114.32), "ÖRNEK BLİP 2 ", 3.0, 2, 438)
    CreateBlip3(vector3(2510.83, -341.78, 118.19), "ÖRNEK BLİP 3 ", 3.0, 77, 137)
    end)
    
    function CreateBlip(coords, text, radius, color, sprite)
        local blip = AddBlipForCoord(coords)
        SetBlipSprite(blip, sprite)
        SetBlipColour(blip, color)
        SetBlipScale(blip, 0.6)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(text)
        EndTextCommandSetBlipName(blip)
    end
  
    function CreateBlip2(coords, text, radius, color, sprite)
        local blip = AddBlipForCoord(coords)
        SetBlipSprite(blip, sprite)
        SetBlipColour(blip, color)
        SetBlipScale(blip, 0.5)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(text)
        EndTextCommandSetBlipName(blip)
    end
    function CreateBlip3(coords, text, radius, color, sprite)
        local blip = AddBlipForCoord(coords)
        SetBlipSprite(blip, sprite)
        SetBlipColour(blip, color)
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(text)
        EndTextCommandSetBlipName(blip)
    end


    -- HARİTADAKİ GANG RENKLERİNİ AYARLAMANIZI SAĞLAR
    blips = {
        --{id = "green", x= -72.41, y = -1567.95, z = 31.1, width = 300.0, height = 100.0, color = 2, rotation = 200.4}, 
        --{id = "ballas", x= 7.95, y = -1860.03, z = 24.84, width = 100.0, height = 345.0, color = 7, rotation = 195.88},
        --{id = "vagos", x= 327.0, y = -2033.47, z = 20.94, width = 250.0, height = 250.0, color = 46, rotation = 195.78}
    }
    
    CreateThread(function()
        for i = 1, #blips, 1 do
            local blip = AddBlipForArea(blips[i].x, blips[i].y, blips[i].z, blips[i].width, blips[i].height)
            SetBlipAlpha(blip, 75)
            SetBlipColour(blip, blips[i].color)
            SetBlipRotation(blip, blips[i].rotation)
            SetBlipDisplay(blip, 3)
            SetBlipAsShortRange(blip, true)
        end
    end) 

    RegisterCommand("f3fix", function()
        showMenu = false
        SetCustomNuiFocus(false, false)
        SendNUIMessage({state = 'destroy'})
        PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    end)
    
