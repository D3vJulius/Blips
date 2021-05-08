local blips = {

    {title="Policestation", colour=29, id=60, x=436.811, y=-982.757, z=30.6986}
    -- Add more blips here 
    -- Example: {title="title", colour=, id=, x=, y=-, z=}
}
  
    Citizen.CreateThread(function()
    
      for _, julius in pairs(blips) do
        julius.blip = AddBlipForCoord(julius.x, julius.y, julius.z)
        SetBlipSprite(julius.blip, julius.id)
        SetBlipDisplay(julius.blip, 4)
        SetBlipScale(julius.blip, 0.9)
        SetBlipColour(julius.blip, julius.colour)
        SetBlipAsShortRange(julius.blip, true)
      BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(julius.title)
        EndTextCommandSetBlipName(julius.blip)
      end
    end)
  
