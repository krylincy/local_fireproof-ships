		
AddPrefabPostInit("anchor", function(inst)
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)		
AddPrefabPostInit("burnable_locator_medium", function(inst) -- entity on the boat, that burns
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)		
AddPrefabPostInit("fishbox", function(inst)
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)		
AddPrefabPostInit("mast", function(inst)
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)				
AddPrefabPostInit("mast_malbatross", function(inst)
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)
AddPrefabPostInit("steeringwheel", function(inst)
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)		
AddPrefabPostInit("tacklestation", function(inst)
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)		
AddPrefabPostInit("winch", function(inst)
	if inst.components ~= nil and inst.components.burnable ~= nil then
		inst:RemoveComponent("burnable")
	end
end)

-- the action need to be overwritten too, because it has a check for the burable compontent
GLOBAL.ACTIONS.STEER_BOAT.fn = function(act)
	if act.target ~= nil
		and (act.target.components.steeringwheel ~= nil and act.target.components.steeringwheel.sailor == nil)		
		and act.doer.components.steeringwheeluser ~= nil then

		act.doer.components.steeringwheeluser:SetSteeringWheel(act.target)
		return true
	end
end


