local blips = {

        -- Example: {title="title", colour=, id=, x=, y=-, z=}
    {title="Policestation", colour=29, id=60, x=436.811, y=-982.757, z=30.6986}
    -- Add more blips here
    }
    
    Citizen.CreateThread(function()
    
      for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
      end
    end)
    