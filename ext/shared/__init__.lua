--[[----------------------------------------
		
				ASSAULT RIFLES
							
--]]----------------------------------------
require('__shared/assault-rifle-data')
for i=1,#ASSAULT_RIFLES do
	ResourceManager:RegisterInstanceLoadHandler(Guid(ASSAULT_RIFLES[i][1]),
	Guid(ASSAULT_RIFLES[i][2]), function(instance)
		-- Cast it so we can access its fields.
		local firingFunctionData = FiringFunctionData (instance)
		-- Make it writable so we can modify its fields.
		firingFunctionData:MakeWritable()
		firingFunctionData.shot.initialSpeed.z = firingFunctionData.shot.initialSpeed.z * 1.5
	end)
	
	if ASSAULT_RIFLES[i][4] ~= nil then
		ResourceManager:RegisterInstanceLoadHandler(Guid(ASSAULT_RIFLES[i][1]),
		Guid(ASSAULT_RIFLES[i][4]), function(instance)
			-- Cast it so we can access its fields.
			local weaponShotModifier = WeaponShotModifier(instance)
			-- Make it writable so we can modify its fields.
			weaponShotModifier:MakeWritable()
			weaponShotModifier.initialSpeed.z = weaponShotModifier.initialSpeed.z * 1.3
		end)
	end
end

--[[----------------------------------------
		
				SNIPER RIFLES
							
--]]----------------------------------------
require('__shared/sniper-data')
for i=1,#SNIPER_RIFLES do
	ResourceManager:RegisterInstanceLoadHandler(Guid(SNIPER_RIFLES[i][1]),
	Guid(SNIPER_RIFLES[i][2]), function(instance)
		-- Cast it so we can access its fields.
		local firingFunctionData = FiringFunctionData (instance)
		-- Make it writable so we can modify its fields.
		firingFunctionData:MakeWritable()
		firingFunctionData.shot.initialSpeed.z = firingFunctionData.shot.initialSpeed.z * 1.6
	end)
	
	if SNIPER_RIFLES[i][4] ~= nil then
		ResourceManager:RegisterInstanceLoadHandler(Guid(SNIPER_RIFLES[i][1]),
		Guid(SNIPER_RIFLES[i][4]), function(instance)
			-- Cast it so we can access its fields.
			local weaponShotModifier = WeaponShotModifier(instance)
			-- Make it writable so we can modify its fields.
			weaponShotModifier:MakeWritable()
			weaponShotModifier.initialSpeed.z = weaponShotModifier.initialSpeed.z * 1.3
		end)
	end
end

--[[----------------------------------------
		
				CARBINES
							
--]]----------------------------------------
require('__shared/carbine-data')
for i=1,#CARBINES do
	ResourceManager:RegisterInstanceLoadHandler(Guid(CARBINES[i][1]),
	Guid(CARBINES[i][2]), function(instance)
		-- Cast it so we can access its fields.
		local firingFunctionData = FiringFunctionData (instance)
		-- Make it writable so we can modify its fields.
		firingFunctionData:MakeWritable()
		firingFunctionData.shot.initialSpeed.z = firingFunctionData.shot.initialSpeed.z * 1.5
	end)
	
	if CARBINES[i][4] ~= nil then
		ResourceManager:RegisterInstanceLoadHandler(Guid(CARBINES[i][1]),
		Guid(CARBINES[i][4]), function(instance)
			-- Cast it so we can access its fields.
			local weaponShotModifier = WeaponShotModifier(instance)
			-- Make it writable so we can modify its fields.
			weaponShotModifier:MakeWritable()
			weaponShotModifier.initialSpeed.z = weaponShotModifier.initialSpeed.z * 1.3
		end)
	end
end

--[[----------------------------------------
		
				LIGHT MACHINE GUNS
							
--]]----------------------------------------
require('__shared/light-machine-gun-data')
for i=1,#LIGHT_MACHINE_GUNS do
	ResourceManager:RegisterInstanceLoadHandler(Guid(LIGHT_MACHINE_GUNS[i][1]),
	Guid(LIGHT_MACHINE_GUNS[i][2]), function(instance)
		-- Cast it so we can access its fields.
		local firingFunctionData = FiringFunctionData (instance)
		-- Make it writable so we can modify its fields.
		firingFunctionData:MakeWritable()
		firingFunctionData.shot.initialSpeed.z = firingFunctionData.shot.initialSpeed.z * 1.5
	end)
end

--[[----------------------------------------
		
				LUANCHERS
							
--]]----------------------------------------
require('__shared/launcher-data')
for i=1,#LAUNCHERS do
	ResourceManager:RegisterInstanceLoadHandler(Guid(LAUNCHERS[i][1]), 
	Guid(LAUNCHERS[i][2]), function(instance)
		-- Cast it so we can access its fields.
		local firingFunctionData = FiringFunctionData(instance)
		-- Make it writable so we can modify its fields.
		firingFunctionData:MakeWritable()
		firingFunctionData.shot.initialSpeed.z = 150.0
	end)

	ResourceManager:RegisterInstanceLoadHandler(Guid(LAUNCHERS[i][3]), 
	Guid(LAUNCHERS[i][4]), function(instance)
		-- Cast it so we can access its fields.
		local missileEntityData  = MissileEntityData (instance)
		-- Make it writable so we can modify its fields.
		missileEntityData:MakeWritable()
		missileEntityData.gravity = missileEntityData.gravity * 2.0
		missileEntityData.maxSpeed = 150.0
	end)
end