// Information //
SWEP.Gun = ("sawgun")
SWEP.PrintName = "Sawgun"			
SWEP.Base = "weapon_tttbase"
SWEP.Instructions = "Left click to fire a single sawblade, right click to shoot 3 projectiles (shotgun style)!"
SWEP.Icon = "vgui/sawgun.png"
SWEP.Slot = 4			
SWEP.SlotPos = 3
SWEP.Kind = WEAPON_EQUIP1
SWEP.CanBuy = { ROLE_TRAITOR, ROLE_DETECTIVE }
SWEP.LimitedStock = true

SWEP.Spawnable = true
SWEP.AdminOnly = false

if ( CLIENT ) then
	SWEP.EquipMenuData = { type = "Projectile Weapon", desc = "Left click to fire a single sawblade,\nright click to shoot 3 projectiles at once!"};
end

SWEP.UseHands = true
SWEP.HoldType = "crossbow"
SWEP.ViewModelFOV = 60
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/c_crossbow.mdl"
SWEP.WorldModel = "models/weapons/w_crossbow.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true
SWEP.ViewModelBoneMods = {}

SWEP.VElements = {
	["bind_right_side_block_and_left_side_block+"] = { type = "Model", model = "models/props_phx/construct/metal_tube.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-2.274, -0.84, 1.363), angle = Angle(54.205, 6, -3.069), size = Vector(0.009, 0.23, 0.009), color = Color(255, 255, 255, 0), surpresslightning = false, material = "models/HEVSuit/hevsuit_sheet", skin = 0, bodygroup = {} },
	["saw_blade"] = { type = "Model", model = "models/props_junk/sawblade001a.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-0.355, -1.364, 20.454), angle = Angle(-91.024, 68.523, 158.522), size = Vector(0.5, 0.5, 0.5), color = Color(255, 0, 0, 255), surpresslightning = false, material = "models/XQM/LightLinesRed_tool", skin = 0, bodygroup = {} },
	["support_bar"] = { type = "Model", model = "models/Mechanics/robotics/a1.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-0.101, -2.08, -9.5), angle = Angle(90, 0, 84.886), size = Vector(0.379, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/effects/goldenwrench", skin = 0, bodygroup = {} },
	["test"] = { type = "Sprite", sprite = "sprites/physcannon_bluecore1b", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(0.6, -4.801, -6.5), size = { x = 1.457, y = 1.457 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["right_side_block"] = { type = "Model", model = "models/mechanics/solid_steel/steel_beam45_3.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-13.183, 1.363, 11.364), angle = Angle(90, 0, -90), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/Effects/solidier_hologram", skin = 0, bodygroup = {} },
	["left_side_block"] = { type = "Model", model = "models/mechanics/solid_steel/steel_beam45_3.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(13.182, 1.363, 13.182), angle = Angle(90, 0, 90), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/Effects/solidier_hologram", skin = 0, bodygroup = {[2] = 1} },
	["left_side_body_01"] = { type = "Model", model = "models/props_phx/construct/metal_tubex2.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-0.101, 2.273, 7.727), angle = Angle(0, 0, 0), size = Vector(0.05, 0.057, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/effects/goldenwrench", skin = 0, bodygroup = {} },
	["bind_right_side_block_and_left_side_block"] = { type = "Model", model = "models/props_phx/construct/metal_tube.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(7.727, -1, 4.9), angle = Angle(123.75, 0, 0), size = Vector(0.009, 0.209, 0.009), color = Color(255, 255, 255, 0), surpresslightning = false, material = "models/HEVSuit/hevsuit_sheet", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["right_side_block"] = { type = "Model", model = "models/mechanics/solid_steel/steel_beam45_3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(15.909, -14.091, -1.364), angle = Angle(0, 100, 0), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/Effects/solidier_hologram", skin = 0, bodygroup = {} },
	["saw_blade"] = { type = "Model", model = "models/props_junk/sawblade001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(23.181, -1.8, -4.092), angle = Angle(0, 9.204, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 0, 0, 255), surpresslightning = false, material = "models/XQM/LightLinesRed_tool", skin = 0, bodygroup = {} },
	["left_side_block"] = { type = "Model", model = "models/mechanics/solid_steel/steel_beam45_3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(20.454, 12.272, -1.364), angle = Angle(0, 0, 0), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/Effects/solidier_hologram", skin = 0, bodygroup = {} },
	["ammobox_01"] = { type = "Model", model = "models/props_phx/construct/metal_tubex2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(16.818, -0.7, -0.456), angle = Angle(-90, 11.25, 180), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/effects/goldenwrench", skin = 0, bodygroup = {} },
	["supportbar_01"] = { type = "Model", model = "models/Mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-4.092, 2.7, -4.6), angle = Angle(0, 9.204, 0), size = Vector(0.435, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/effects/goldenwrench", skin = 0, bodygroup = {} },
	["supportbar_01+"] = { type = "Model", model = "models/Mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-4.092, 2.7, -2), angle = Angle(0, 9.204, 0), size = Vector(0.435, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/effects/goldenwrench", skin = 0, bodygroup = {} }
}

// clip info
SWEP.Primary.Sound = Sound("") -- Script that calls the primary fire sound
SWEP.Primary.RPM = GetConVar("ttt_sawgun_rpm"):GetInt() -- This is in Rounds Per Minute
SWEP.Primary.ClipSize = GetConVar("ttt_sawgun_clipSize"):GetInt() -- Size of a clip
SWEP.Primary.DefaultClip = 0 -- Bullets you start with, 0 because we set this manually after initialization to avoid a bug
SWEP.Primary.KickUp	= 0 -- Maximum up recoil (rise)
SWEP.Primary.KickDown = 0 -- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 0	-- Maximum up recoil (stock)
SWEP.Primary.Automatic = GetConVar("ttt_sawgun_automaticFire"):GetBool() -- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo = "357"				
-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a metal peircing shotgun slug

SWEP.Primary.Round = ("thrown_sawblade") -- NAME OF ENTITY GOES HERE

SWEP.Secondary.IronFOV = 60 -- How much you 'zoom' in. Less is more! 	

SWEP.Primary.NumShots = 0 -- How many bullets to shoot per trigger pull
SWEP.Primary.Damage	= 0	-- Base damage per bullet
SWEP.Primary.Spread	= 0	-- Define from-the-hip accuracy (1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0 -- Ironsight accuracy, should be the same for shotguns
--none of this matters for IEDs and other ent-tossing sweps

SWEP.Secondary.ClipSize	= -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo	= "none"

// info about gun
SWEP.Weight	= 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom	= false

SWEP.Slot = 4
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true
SWEP.BounceWeaponIcon = false	-- Should the weapon icon bounce?

SWEP.Initialized = false
SWEP.Ammo = 0

local Debug = false
local SawbladeRotate = GetConVar("ttt_sawblade_rotate"):GetBool()

function pprint(toPrint)
	if (Debug) then
		if (CLIENT) then
			print("Client | " .. tostring(toPrint))
		elseif (SERVER) then
			print("Server | " .. tostring(toPrint))
		end
	end
end

function SWEP:PrimaryAttack()
		if self:Clip1() <= 0 then
			return 
		end
		self:FireRocket()
		self:GetOwner():SetAnimation( PLAYER_ATTACK1 )
		self:SetNextPrimaryFire(CurTime()+1/(self.Primary.RPM/60))
		self:SetNextSecondaryFire(CurTime()+1/(self.Primary.RPM/60))		
		self:EmitSound(Sound("Weapon_Knife.Slash"))
		self.BaseClass.ShootEffects (self)
		self:ChangeAmmo(-1)

		if self:Clip1() == 0 then
			self:Reload()
		end			
end

function SWEP:FireRocket()
	pos = self:GetOwner():GetShootPos()
	if SERVER then
		local rocket = ents.Create(self.Primary.Round)
		if !rocket:IsValid() then
			return false 
		end
		rocket:SetAngles(self:GetOwner():GetAimVector():Angle())
		rocket:SetPos(pos)
		rocket:SetOwner(self:GetOwner())
		rocket:Spawn()
		rocket.Owner = self:GetOwner()
		rocket:Activate()
		eyes = self:GetOwner():EyeAngles()
		local phys = rocket:GetPhysicsObject()
		phys:SetVelocity(self:GetOwner():GetAimVector() * 90000)
	end
	if SERVER and !self:GetOwner():IsNPC() then
		local anglo = Angle(-10, -5, 0)		
		self:GetOwner():ViewPunch(anglo)
	end
end

function SWEP:FireRocket2()
	aim = self:GetOwner():GetAimVector()
	side = aim:Cross(Vector(0,0,1))
	pos = self:GetOwner():GetShootPos() + side * 20
	if SERVER then
		local rocket = ents.Create(self.Primary.Round)
		if !rocket:IsValid() then 
			return false 
		end
		rocket:SetAngles(self:GetOwner():GetAimVector():Angle())
		rocket:SetPos(pos)
		rocket:SetOwner(self:GetOwner())
		rocket:Spawn()
		rocket.Owner = self:GetOwner()
		rocket:Activate()
		eyes = self:GetOwner():EyeAngles()
		local phys = rocket:GetPhysicsObject()
		phys:SetVelocity(self:GetOwner():GetAimVector() * 90000)
	end
	if SERVER and !self:GetOwner():IsNPC() then
		local anglo = Angle(-10, -5, 0)		
		self:GetOwner():ViewPunch(anglo)
	end
end

function SWEP:FireRocket3()
	aim = self:GetOwner():GetAimVector()
	side = aim:Cross(Vector(0,0,1))
	pos = self:GetOwner():GetShootPos() + side * -20
	if SERVER then
		local rocket = ents.Create(self.Primary.Round)
		if !rocket:IsValid() then 
			return false 
		end
		rocket:SetAngles(self:GetOwner():GetAimVector():Angle())
		rocket:SetPos(pos)
		rocket:SetOwner(self:GetOwner())
		rocket:Spawn()
		rocket.Owner = self:GetOwner()
		rocket:Activate()
		eyes = self:GetOwner():EyeAngles()
		local phys = rocket:GetPhysicsObject()
		phys:SetVelocity(self:GetOwner():GetAimVector() * 90000)
	end
	if SERVER and !self:GetOwner():IsNPC() then
		local anglo = Angle(-10, -5, 0)		
		self:GetOwner():ViewPunch(anglo)
	end
end

function SWEP:SecondaryAttack()
	if (GetConVar("ttt_sawgun_secondaryFire"):GetBool()) then
		if self:Clip1() <= 2 then 
			return 
		end
		self:FireRocket()
		self:FireRocket2()
		self:FireRocket3()
		self:GetOwner():SetAnimation( PLAYER_ATTACK1 )
		self:SetNextSecondaryFire(CurTime()+1/(self.Primary.RPM/60))
		self:SetNextPrimaryFire(CurTime()+1/(self.Primary.RPM/60))		
		self:EmitSound(Sound("Weapon_Knife.Slash"))
		self.BaseClass.ShootEffects (self)
		self:ChangeAmmo(-3)
		
		if self:Clip1() <= 2 then
			self:Reload()
		end	
	end
end	

function SWEP:Reload()
	self:SetupConvars()
	if self:Clip1() == GetConVar("ttt_sawgun_clipSize"):GetInt() then return end
	if self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()) == 0 then return end 
	self.Ammo = self:Ammo1()
	local need = self.Primary.ClipSize - self:Clip1()
	if (self.Ammo >= need) then
		self.Ammo = self:Ammo1() - need
	else
		self.Ammo = 0
	end
	pprint(self.Ammo)
	self:DefaultReload(ACT_VM_RELOAD) -- animation for reloading
	self:EmitSound(Sound("Weapon_Crossbow.Reload"))
end

function SWEP:SetupConvars()
	SawbladeRotate = GetConVar("ttt_sawblade_rotate"):GetBool()
	self.Primary.RPM = GetConVar("ttt_sawgun_rpm"):GetInt() -- This is in Rounds Per Minute
	self.Primary.ClipSize = GetConVar("ttt_sawgun_clipSize"):GetInt() -- Size of a clip
	self.Primary.Automatic = GetConVar("ttt_sawgun_automaticFire"):GetBool() -- Automatic = true; Semi Auto = false
	-- Clip1 ist das Magazin, Ammo1 die Reserve
	pprint("Convars | " .. tostring(GetConVar("ttt_sawblade_rotate"):GetBool()) .. " " .. tostring(GetConVar("ttt_sawgun_rpm"):GetInt()) .. " " .. tostring(GetConVar("ttt_sawgun_clipSize"):GetInt()) .. " " .. tostring(GetConVar("ttt_sawgun_ammo"):GetInt()) .. " " .. tostring(GetConVar("ttt_sawgun_automaticFire"):GetBool()) .. " | " .. self:Clip1() .. " | " .. self:Ammo1())
end

function SWEP:ChangeAmmo(amount)
	pprint("Change ammo " .. tostring(self.Ammo) .. " by " .. tostring(amount))
	if (amount >= 0) then
		self:GetOwner():GiveAmmo(amount, self.Primary.Ammo)
		self.Ammo = self.Ammo + amount
		pprint(self.Ammo)
	else
		self:TakePrimaryAmmo(-amount)
	end
end

function SWEP:Equip()
	if (SERVER) then
		if IsValid(self:GetOwner()) then
			if (self.Initialized) then
				local toAdd = GetConVar("ttt_sawgun_ammo"):GetInt()
				local need = self.Primary.ClipSize - self:Clip1()
				if (toAdd >= need) then
					self:SetClip1(need)
					toAdd = toAdd - need
				else
					self:SetClip1(toAdd)
					toAdd = 0
				end
				self:ChangeAmmo(toAdd)
				self.Initialized = false
			else
				self:GetOwner():GiveAmmo(self.Ammo, self.Primary.Ammo)
			end
		end
	end
	pprint("Equip | " .. tostring(self:Clip1()))
	self:SetupConvars()
end

function SWEP:Deploy()
	pprint("Deploy")
	self:SetupConvars()
	self:SendWeaponAnim(ACT_VM_DRAW)
	if IsValid(self:GetOwner():GetViewModel()) then
		self:SetNextPrimaryFire(CurTime() + self:GetOwner():GetViewModel():SequenceDuration())
		self:SetNextSecondaryFire(CurTime() + self:GetOwner():GetViewModel():SequenceDuration())
	end
	return true	
end

function SWEP:Think()
	self:OnThink()
end

local SpinAng = 270
local Spinz = 90
local Spiny = 0

local SpinAngw = 0
local Spinzw = 0
local Spinyw = 90

function SWEP:OnThink()
	if (CLIENT) then
		if SawbladeRotate == true then
			SpinAng = SpinAng + 1
			Spinz = Spinz + 0
			Spiny = Spiny + 0
		
			SpinAngw = SpinAngw + 0
			Spinzw = Spinzw + 0
			Spinyw = Spinyw + 1

			self.VElements["saw_blade"].angle.x = SpinAng
			self.VElements["saw_blade"].angle.z = Spinz
			self.VElements["saw_blade"].angle.y = Spiny
		
			self.WElements["saw_blade"].angle.x = SpinAngw
			self.WElements["saw_blade"].angle.z = Spinzw
			self.WElements["saw_blade"].angle.y = Spinyw
		elseif SawbladeRotate == false then 
			return 
		end
	end
end

function SWEP:Initialize()
	if (SERVER) then
		self.Initialized = true
	end

	// other initialize code goes here

	if CLIENT then

		self:SetWeaponHoldType( self.HoldType )	
		// Create a new table for every weapon instance
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )

		self:CreateModels(self.VElements) // create viewmodels
		self:CreateModels(self.WElements) // create worldmodels
		
		// init view model bone build function
		if IsValid(self:GetOwner()) then
			local vm = self:GetOwner():GetViewModel()
			if IsValid(vm) then
				self:ResetBonePositions(vm)
				
				// Init viewmodel visibility
				if (self.ShowViewModel == nil or self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					// we set the alpha to 1 instead of 0 because else ViewModelDrawn stops being called
					vm:SetColor(Color(255,255,255,1))
					// ^ stopped working in GMod 13 because you have to do Entity:SetRenderMode(1) for translucency to kick in
					// however for some reason the view model resets to render mode 0 every frame so we just apply a debug material to prevent it from drawing
					vm:SetMaterial("Debug/hsv")			
				end
			end
		end
	end
			
	if CLIENT then
		local oldpath = "vgui/hud/name" -- the path goes here
		local newpath = string.gsub(oldpath, "name", self.Gun)
		self.WepSelectIcon = surface.GetTextureID(newpath)
	end
	
end

function SWEP:Holster()
	if CLIENT and IsValid(self:GetOwner()) then
		local vm = self:GetOwner():GetViewModel()
		if IsValid(vm) then
			self:ResetBonePositions(vm)
		end
	end
	
	return true
end

function SWEP:OnDrop()
	if (SERVER) then
		pprint(self.Ammo)
	end

	pprint("Drop")
end

function SWEP:OnRemove()
	self:Holster()
end

if CLIENT then

	SWEP.vRenderOrder = nil
	function SWEP:ViewModelDrawn()
		
		local vm = self:GetOwner():GetViewModel()
		if !IsValid(vm) then return end
		
		if (!self.VElements) then return end
		
		self:UpdateBonePositions(vm)

		if (!self.vRenderOrder) then
			
			// we build a render order because sprites need to be drawn after models
			self.vRenderOrder = {}

			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
			
		end

		for k, name in ipairs( self.vRenderOrder ) do
		
			local v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (!v.bone) then continue end
			
			local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
			
			if (!pos) then continue end
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				//model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()

			end
			
		end
		
	end

	SWEP.wRenderOrder = nil
	function SWEP:DrawWorldModel()
		
		if (self.ShowWorldModel == nil or self.ShowWorldModel) then
			self:DrawModel()
		end
		
		if (!self.WElements) then return end
		
		if (!self.wRenderOrder) then

			self.wRenderOrder = {}

			for k, v in pairs( self.WElements ) do
				if (v.type == "Model") then
					table.insert(self.wRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.wRenderOrder, k)
				end
			end

		end
		
		if (IsValid(self:GetOwner())) then
			bone_ent = self:GetOwner()
		else
			// when the weapon is dropped
			bone_ent = self
		end
		
		for k, name in pairs( self.wRenderOrder ) do
		
			local v = self.WElements[name]
			if (!v) then self.wRenderOrder = nil break end
			if (v.hide) then continue end
			
			local pos, ang
			
			if (v.bone) then
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
			else
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
			end
			
			if (!pos) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				//model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()

			end
			
		end
		
	end

	function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
		
		local bone, pos, ang
		if (tab.rel and tab.rel != "") then
			
			local v = basetab[tab.rel]
			
			if (!v) then return end
			
			// Technically, if there exists an element with the same name as a bone
			// you can get in an infinite loop. Let's just hope nobody's that stupid.
			pos, ang = self:GetBoneOrientation( basetab, v, ent )
			
			if (!pos) then return end
			
			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
		else
		
			bone = ent:LookupBone(bone_override or tab.bone)

			if (!bone) then return end
			
			pos, ang = Vector(0,0,0), Angle(0,0,0)
			local m = ent:GetBoneMatrix(bone)
			if (m) then
				pos, ang = m:GetTranslation(), m:GetAngles()
			end
			
			if (IsValid(self:GetOwner()) and self:GetOwner():IsPlayer() and 
				ent == self:GetOwner():GetViewModel() and self.ViewModelFlip) then
				ang.r = -ang.r // Fixes mirrored models
			end
		
		end
		
		return pos, ang
	end

	function SWEP:CreateModels( tab )

		if (!tab) then return end

		// Create the clientside models here because Garry says we can't do it in the render hook
		for k, v in pairs( tab ) do
			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 
					string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
				
				v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
				if (IsValid(v.modelEnt)) then
					v.modelEnt:SetPos(self:GetPos())
					v.modelEnt:SetAngles(self:GetAngles())
					v.modelEnt:SetParent(self)
					v.modelEnt:SetNoDraw(true)
					v.createdModel = v.model
				else
					v.modelEnt = nil
				end
				
			elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 
				and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
				
				local name = v.sprite.."-"
				local params = { ["$basetexture"] = v.sprite }
				// make sure we create a unique name based on the selected options
				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
				for i, j in pairs( tocheck ) do
					if (v[j]) then
						params["$"..j] = 1
						name = name.."1"
					else
						name = name.."0"
					end
				end

				v.createdSprite = v.sprite
				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
				
			end
		end
		
	end
	
	local allbones
	local hasGarryFixedBoneScalingYet = false

	function SWEP:UpdateBonePositions(vm)
		
		if self.ViewModelBoneMods then
			
			if (!vm:GetBoneCount()) then return end
			
			// !! WORKAROUND !! //
			// We need to check all model names :/
			local loopthrough = self.ViewModelBoneMods
			if (!hasGarryFixedBoneScalingYet) then
				allbones = {}
				for i=0, vm:GetBoneCount() do
					local bonename = vm:GetBoneName(i)
					if (self.ViewModelBoneMods[bonename]) then 
						allbones[bonename] = self.ViewModelBoneMods[bonename]
					else
						allbones[bonename] = { 
							scale = Vector(1,1,1),
							pos = Vector(0,0,0),
							angle = Angle(0,0,0)
						}
					end
				end
				
				loopthrough = allbones
			end
			// !! ----------- !! //
			
			for k, v in pairs( loopthrough ) do
				local bone = vm:LookupBone(k)
				if (!bone) then continue end
				
				// !! WORKAROUND !! //
				local s = Vector(v.scale.x,v.scale.y,v.scale.z)
				local p = Vector(v.pos.x,v.pos.y,v.pos.z)
				local ms = Vector(1,1,1)
				if (!hasGarryFixedBoneScalingYet) then
					local cur = vm:GetBoneParent(bone)
					while(cur >= 0) do
						local pscale = loopthrough[vm:GetBoneName(cur)].scale
						ms = ms * pscale
						cur = vm:GetBoneParent(cur)
					end
				end
				
				s = s * ms
				// !! ----------- !! //
				
				if vm:GetManipulateBoneScale(bone) != s then
					vm:ManipulateBoneScale( bone, s )
				end
				if vm:GetManipulateBoneAngles(bone) != v.angle then
					vm:ManipulateBoneAngles( bone, v.angle )
				end
				if vm:GetManipulateBonePosition(bone) != p then
					vm:ManipulateBonePosition( bone, p )
				end
			end
		else
			self:ResetBonePositions(vm)
		end
		   
	end
	 
	function SWEP:ResetBonePositions(vm)
		
		if (!vm:GetBoneCount()) then return end
		for i=0, vm:GetBoneCount() do
			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
		end
		
	end

	/**************************
		Global utility code
	**************************/

	// Fully copies the table, meaning all tables inside this table are copied too and so on (normal table.Copy copies only their reference).
	// Does not copy entities of course, only copies their reference.
	// WARNING: do not use on tables that contain themselves somewhere down the line or you'll get an infinite loop
	function table.FullCopy( tab )

		if (!tab) then return nil end
		
		local res = {}
		for k, v in pairs( tab ) do
			if (type(v) == "table") then
				res[k] = table.FullCopy(v) // recursion ho!
			elseif (type(v) == "Vector") then
				res[k] = Vector(v.x, v.y, v.z)
			elseif (type(v) == "Angle") then
				res[k] = Angle(v.p, v.y, v.r)
			else
				res[k] = v
			end
		end
		
		return res
		
	end
	
end
