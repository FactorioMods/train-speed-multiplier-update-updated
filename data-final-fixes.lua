function MultiplyEnergy(energy, multiplier)
  if type(energy) ~= "string" then
    return energy
  end
  local EnergyNum, EnergyUnit = energy:match("(%d+%.?%d*)(%a+)")
  return EnergyNum * multiplier .. EnergyUnit
end

for i, v in pairs(data.raw['locomotive']) do

	v.max_speed = v.max_speed * settings.startup["Train-Speed-Multiplier"].value
	v.braking_force = v.braking_force * settings.startup["Train-Speed-Multiplier"].value
	v.max_power = MultiplyEnergy(v.max_power, settings.startup["Train-Speed-Multiplier"].value)

end