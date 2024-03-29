ENT.Type = "anim"
ENT.PrintName = ""
ENT.Author = ""
ENT.Contact = ""
ENT.Purpose	= ""
ENT.Instructions = ""

if SERVER then
	local SawbladeCollide = GetConVar("ttt_sawblade_collide"):GetBool()
	AddCSLuaFile("shared.lua")

	/*---------------------------------------------------------
	Name: ENT:Initialize()
	---------------------------------------------------------*/
	function ENT:Initialize()
		self:SetModel("models/props_junk/sawblade001a.mdl")
		self:SetMaterial("models/XQM/LightLinesRed_tool")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		local phys = self:GetPhysicsObject()
		--self.NextThink = CurTime() +  1

		if (phys:IsValid()) then
			phys:Wake()
			phys:SetMass(5)
		end
		
		self.InFlight = true

		util.PrecacheSound("physics/metal/metal_grenade_impact_hard3.wav")
		util.PrecacheSound("physics/metal/metal_grenade_impact_hard2.wav")
		util.PrecacheSound("physics/metal/metal_grenade_impact_hard1.wav")
		util.PrecacheSound("physics/flesh/flesh_impact_bullet1.wav")
		util.PrecacheSound("physics/flesh/flesh_impact_bullet2.wav")
		util.PrecacheSound("physics/flesh/flesh_impact_bullet3.wav")

		self.Hit = { 
		Sound("physics/metal/metal_grenade_impact_hard1.wav"),
		Sound("physics/metal/metal_grenade_impact_hard2.wav"),
		Sound("physics/metal/metal_grenade_impact_hard3.wav")};

		self.FleshHit = { 
		Sound("physics/flesh/flesh_impact_bullet1.wav"),
		Sound("physics/flesh/flesh_impact_bullet2.wav"),
		Sound("physics/flesh/flesh_impact_bullet3.wav")}

		self:GetPhysicsObject():SetMass(2)	

		self:SetUseType(SIMPLE_USE)
	end

	/*---------------------------------------------------------
	Name: ENT:Think()
	---------------------------------------------------------*/
	function ENT:Think()
		
		self.lifetime = self.lifetime or CurTime() + 20

		if CurTime() > self.lifetime then
			self:Remove()
		end
		
		if self.InFlight and self:GetAngles().pitch <= 55 then
			self:GetPhysicsObject():AddAngleVelocity(Vector(0, 10, 0))
		end
		
	end

	/*---------------------------------------------------------
	Name: ENT:Disable()
	---------------------------------------------------------*/
	function ENT:Disable()
		-- Put into a timer to avoid changing collision rules within a callback, since that is likely to cause crashes (As indicated by a default console message)
		timer.Simple(0, 
		function() 
			self.PhysicsCollide = function() end
			self.lifetime = CurTime() + 30
			self.InFlight = false
			
			if SawbladeCollide == false then 
				self:SetCollisionGroup(COLLISION_GROUP_WEAPON)
			elseif SawbladeCollide == true then
				self:SetCollisionGroup(COLLISION_GROUP_PLAYER)
			end
		end)
	end

	/*---------------------------------------------------------
	Name: ENT:PhysicsCollided()
	---------------------------------------------------------*/
	function ENT:PhysicsCollide(data, phys)
		
		randomchancetoletzombielive = math.Rand(2.5,10)
		disistheowner = self:GetOwner()
		
		pain = (data.Speed/4)
		
		local Ent = data.HitEntity
		if !(Ent:IsValid() or Ent:IsWorld()) then return end

		if Ent:IsWorld() and self.InFlight then
			if data.Speed > 500 then
				self:EmitSound(Sound("weapons/blades/impact.wav"))
				-- Put into a timer to avoid changing collision rules within a callback, since that is likely to cause crashes (As indicated by a default console message)
				timer.Simple(0, function() self:SetPos(data.HitPos - data.HitNormal * 0) end)
				self:SetAngles(self:GetAngles())
				self:GetPhysicsObject():EnableMotion(false)
			else
				self:EmitSound(self.Hit[math.random(1, #self.Hit)])
			end

			self:Disable()
		elseif Ent.Health then
			if not(Ent:IsPlayer() or Ent:IsNPC() or Ent:GetClass() == "prop_ragdoll") then 
				util.Decal("ManhackCut", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
				self:EmitSound(self.Hit[math.random(1, #self.Hit)])
				self:Disable()
			end
			
			SB_damage = GetConVar("ttt_sawgun_damage"):GetInt()
			
			if Ent:IsPlayer() or not(Ent:IsPlayer() or Ent:GetClass() == "npc_fastzombie" or Ent:GetClass() == "npc_zombie") then  	
				--Ent:TakeDamage(SB_damage, self:GetOwner(), self)
				local dmg = DamageInfo()
				if IsValid(self:GetOwner()) then
					dmg:SetAttacker(self:GetOwner())
				end
				local inflictor = ents.Create("the_sawgun")
				dmg:SetInflictor(inflictor)
				dmg:SetDamage(SB_damage)
				dmg:SetDamageType(DMG_GENERIC)
				Ent:TakeDamageInfo(dmg)
			end

			
			if Ent:GetClass() == "npc_fastzombie" then
				util.BlastDamage(self, self:GetOwner(), Ent:LocalToWorld(Ent:OBBCenter()), 5, 26)
				Ent:Extinguish()
			end
			
			local ZombieHealth = GetConVarString("sk_zombie_health")
			
			if Ent:GetClass() == "npc_zombie" then
			
				if randomchancetoletzombielive <= 5 then 
					util.BlastDamage(self, self:GetOwner(), Ent:LocalToWorld(Ent:OBBCenter()), 5,( ZombieHealth/2) - 1)
				end
				
				if randomchancetoletzombielive > 5 then
					util.BlastDamage(self, self:GetOwner(), Ent:LocalToWorld(Ent:OBBCenter()), 5,( ZombieHealth/2) - 1)
					
					timer.Create("DelayedExtinguish_notalive"..self:GetOwner():UserID(), 0.15, 1, function()  
					Ent:Extinguish()
					Ent:TakeDamage(100, disistheowner, self)
					end ) 
					
				end
				
				timer.Create("DelayedExtinguish"..self:GetOwner():UserID(), 0.1, 1, function()  
					for k,v in pairs( ents.FindByModel( "models/zombie/classic_torso.mdl" ) ) do 
						if IsValid(v) then 
							v:Extinguish()
						end
					end
				end)
				
			end
			
			if (Ent:IsPlayer() or Ent:IsNPC() or Ent:GetClass() == "prop_ragdoll") then 
				local effectdata = EffectData()
				effectdata:SetStart(data.HitPos)
				effectdata:SetOrigin(data.HitPos)
				effectdata:SetScale(1)
				util.Effect("BloodImpact", effectdata)
				self:EmitSound(self.FleshHit[math.random(1,#self.Hit)])
				-- Put into a timer to avoid changing collision rules within a callback, since that is likely to cause crashes (As indicated by a default console message)
				timer.Simple(0, function() self:Remove() end)
			end
		end

		-- Put into a timer to avoid changing collision rules within a callback, since that is likely to cause crashes (As indicated by a default console message)
		timer.Simple(0, function() self:SetOwner(NUL) end)
	end

	/*---------------------------------------------------------
	Name: ENT:Use()
	---------------------------------------------------------*/
	function ENT:Use(activator, caller) 
		if (activator:IsPlayer()) then
			activator:GiveAmmo(1,"357")
			self:Remove()
		end
	end
end

if CLIENT then
	function ENT:Draw()
		self:DrawModel()
	end
end
