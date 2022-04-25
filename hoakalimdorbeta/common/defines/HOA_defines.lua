NDefines.NGame.START_DATE = "592.1.1.12"
NDefines.NGame.END_DATE = "650.1.1.1"

NDefines_Graphics.NGraphics.COUNTRY_FLAG_TEX_WIDTH = 82
NDefines_Graphics.NGraphics.COUNTRY_FLAG_TEX_HEIGHT = 129
NDefines.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 2048
NDefines.NGraphics.COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 512
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_WIDTH = 10
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_HEIGHT = 8196
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_WIDTH = 41
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_HEIGHT = 24000

NDefines.NMilitary.EXPERIENCE_LOSS_FACTOR = 2.0	-- Scale to smaller unit sizes
NDefines.NMilitary.FIELD_EXPERIENCE_SCALE = 0.045	-- Scale to smaller unit sizes

NDefines.NMilitary.CORPS_COMMANDER_DIVISIONS_CAP = 16 --24
NDefines.NMilitary.FIELD_MARSHAL_DIVISIONS_CAP = 16 --24
NDefines.NMilitary.FIELD_MARSHAL_ARMIES_CAP = 3 --5

NDefines.NMilitary.BASE_FORT_PENALTY = -0.10 --Nerf defensive bonus, from -0.15

NDefines.NSupply.AVAILABLE_MANPOWER_STATE_SUPPLY = 7.2 -- SUPPLY FROM STATE POPULATION (TEMP) (Default 0.18 from Vanilla - Setting to 1.0 Calculation is 0.01 Supply per 10,000 Pop)





-- AI Diplomacy
NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.0
NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.5
NDefines.NAI.FORCE_FACTOR_AGAINST_EXTRA_MINOR = 0.4			-- AI considers generating wargoals against minors below this % of force compared to themselves to get at a bigger enemy.
NDefines.NAI.MAX_EXTRA_WARGOAL_GENERATION = 2				-- AI may want to generate wargoals against weak minors to get at larger enemy, but never more that this at any given time.
NDefines.NAI.WARGOAL_GENERATION_STRENGTH_FACTOR = 1.5	-- Desire to generate wargoal effected negatevely if actor strength is less than this factor of target strength
NDefines.NAI.DECLARE_WAR_RELATIVE_FORCE_FACTOR = 0.4	-- Weight of relative force between nations that consider going to war
NDefines.NAI.DECLARE_WAR_NOT_NEIGHBOR_FACTOR = 0.25		-- Multiplier applied before force factor if country is not neighbor with the one it is considering going to war
