dofile("data/scripts/lib/mod_settings.lua")

function mod_setting_change_callback(mod_id, gui, in_main_menu, setting, old_value, new_value)
	-- if not tonumber(new_value) then
	-- 	ModSettingSetNextValue(mod_setting_get_id(mod_id, setting), "0", false)
	-- 	ModSettingSet(mod_setting_get_id(mod_id, setting), "0")
	-- end
end

local mod_id = "tweakeroo" -- This should match the name of your mod's folder.
mod_settings_version = 1   -- This is a magic global that can be used to migrate settings to new mod versions. call mod_settings_get_version() before mod_settings_update() to get the old value.
mod_settings =
{
	{
		id = "zoom",
		ui_name = "Camera Zoom",
		ui_description = "How zoomed in the camera is.",
		value_default = "1.0",
		text_max_length = 10,
		allowed_characters = "0123456789.",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	-- {
	-- 	id = "screenhax",
	-- 	ui_name = "Camera Zoom No Minimum",
	-- 	ui_description =
	-- 	"Edit a shader file to allow camera zooming in, may break other shader mods.\nZooming out works fine without this.",
	-- 	value_default = false,
	-- 	ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
	-- 		GuiLayoutBeginHorizontal(gui, 0, 0, false, 0, 0)
	-- 		GuiColorSetForNextWidget(gui, 1.0, 1.0, 1.0, 0.5)
	-- 		GuiText(gui, mod_setting_group_x_offset, 1, "Camera Zoom No Minimum: ")
	-- 		local value = ModSettingGetNextValue(mod_setting_get_id(mod_id, setting))
	-- 		if GuiButton(gui, im_id, 0, 0, value and "[Yes]" or "[No]") then
	-- 			local to = not ModSettingGet("tweakeroo.screenhax")
	-- 			ModSettingSet("tweakeroo.screenhax", to)
	-- 			ModSettingSetNextValue("tweakeroo.screenhax", to, false)
	-- 		end
	-- 		mod_setting_tooltip(mod_id, gui, in_main_menu, setting)
	-- 		GuiLayoutEnd(gui)
	-- 	end
	-- },
	{
		id = "mouse",
		ui_name = "Mouse Follow Speed",
		ui_description = "How fast the camera follows the mouse.",
		value_default = "1.0",
		text_max_length = 10,
		allowed_characters = "0123456789.",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "position",
		ui_name = "Player Follow Speed",
		ui_description = "How fast the camera follows the player.",
		value_default = "1.0",
		text_max_length = 10,
		allowed_characters = "0123456789.",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "recoil",
		ui_name = "Camera Recoil",
		ui_description = "Amount firing a wand moves the camera.",
		value_default = "1.0",
		text_max_length = 10,
		allowed_characters = "0123456789.0",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "attack",
		ui_name = "Camera Recoil Ease In",
		ui_description = "Speed the camera reacts to recoil.",
		value_default = "1.0",
		text_max_length = 10,
		allowed_characters = "0123456789.0",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "release",
		ui_name = "Camera Recoil Ease Out",
		ui_description = "Speed the camera recover from recoil.",
		value_default = "1.0",
		text_max_length = 10,
		allowed_characters = "0123456789.0",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "chunks",
		ui_name = "Loaded Chunks",
		ui_description =
		"How many chunks are loaded in, lower values are good when you have a slow CPU but fast storage.",
		value_default = "12",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "day",
		ui_name = "Day Speed",
		ui_description = "How fast the day cycle is.",
		value_default = "1.0",
		text_max_length = 10,
		allowed_characters = "0123456789.",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "bones",
		ui_name = "Ghost Bones Required (Needs disable mod restrictions)",
		ui_description = "How many bone files must be generated before the player ghost can spawn.",
		value_default = "35",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "ghost",
		ui_name = "Ghost Spawn Chance (Needs disable mod restrictions)",
		ui_description = "Chance of the player ghost spawning.",
		value_default = "30",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "autosave",
		ui_name = "Auto Save Time",
		ui_description = "Number of seconds between autosaves",
		value_default = "180",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	-- {
	-- 	id = "gif",
	-- 	ui_name = "Gif Size",
	-- 	ui_description = "Gif size multiplier",
	-- 	value_default = "1",
	-- 	text_max_length = 10,
	-- 	allowed_characters = "0123456789.",
	-- 	change_fn = mod_setting_change_callback,
	-- 	scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	-- },
	-- {
	-- 	id = "fps",
	-- 	ui_name = "Gif Framerate",
	-- 	ui_description = "Control the framerate of gifs.",
	-- 	value_default = "30",
	-- 	text_max_length = 2,
	-- 	allowed_characters = "0123456789",
	-- 	change_fn = mod_setting_change_callback,
	-- 	scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	-- },
	{
		id = "perk",
		ui_name = "Perk Count",
		ui_description = "Controls how many perks are visible at a time in the menu.",
		value_default = "7",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "hp",
		ui_name = "HP Threshhold",
		ui_description = "Controls how much hp you can lose before the low hp warning appears.",
		value_default = "33.3",
		text_max_length = 10,
		allowed_characters = "0123456789.",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "flash",
		ui_name = "HP Flash Speed",
		ui_description = "Controls how fast the low hp warning flashes.",
		value_default = "33.3",
		text_max_length = 10,
		allowed_characters = "0123456789.",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	-- {
	-- 	id = "hurt",
	-- 	ui_name = "Damage Flash",
	-- 	ui_description = "Controls how quickly the damage flash fades.",
	-- 	value_default = "5",
	-- 	text_max_length = 10,
	-- 	allowed_characters = "0123456789.",
	-- 	change_fn = mod_setting_change_callback,
	-- 	scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	-- },
	{
		id = "damage",
		ui_name = "Damage Number Size",
		ui_description = "Adjust the size of damage numbers.",
		value_default = "2",
		text_max_length = 10,
		allowed_characters = "0123456789.",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "updates",
		ui_name = "Maximum Updates",
		ui_description = "Controls how many times the world can update per frame.",
		value_default = "128",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "min",
		ui_name = "Minimum Updates",
		ui_description = "Controls how many times the world can update per frame.",
		value_default = "40",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "flex",
		ui_name = "Flexible Updates",
		ui_description = "Controls how the update system works (buggy).",
		value_default = "0",
		text_max_length = 1,
		allowed_characters = "01",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "throw",
		ui_name = "Throw Precision",
		ui_description = "Controls how many substeps are used for throwing items, contributes massive lag in long runs.",
		value_default = "4",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "render",
		ui_name = "Grid Size",
		ui_description = "Controls how many pixels of the world are rendered at a time. Low values seem better.",
		value_default = "32",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "bg",
		ui_name = "Parallax Mode",
		ui_description = "Enable / Disable Background Mountains (0 or 1).",
		value_default = "1",
		text_max_length = 1,
		allowed_characters = "01",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "parallax",
		ui_name = "Parallax Distance",
		ui_description = "Adjust the amount of parallax.",
		value_default = "512",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "degrees",
		ui_name = "Wobble Amount",
		ui_description = "Adjust the number of degrees the UI wiggles.",
		value_default = "3",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "wobble",
		ui_name = "Wobble Speed",
		ui_description = "Adjust the speed the UI wiggles.",
		value_default = "10",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "seed",
		ui_name = "World Seed",
		ui_description = "The world seed",
		value_default = "0",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
	},
	{
		id = "reset_all",
		ui_name = "Reset All",
		SAVE_NOT = true,
		ui_description = "Reset all Tweakeroo settings.",
		ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
			GuiColorSetForNextWidget(gui, 0.9, 0.4, 0.4, 0.8)
			if GuiButton(gui, im_id, mod_setting_group_x_offset, 0, setting.ui_name) then
				for index, value in ipairs(mod_settings) do
					if value.SAVE_NOT ~= true then
						ModSettingSet("tweakeroo." .. value.id, value.value_default)
						ModSettingSetNextValue("tweakeroo." .. value.id, value.value_default, false)
					end
				end
			end
			mod_setting_tooltip(mod_id, gui, in_main_menu, setting)
		end,
	},
	{
		id = "profile_text",
		ui_name = "Profile Number",
		SAVE_NOT = true,
		ui_description = "Set the Tweakeroo profile to use.",
		value_default = "1",
		text_max_length = 10,
		allowed_characters = "0123456789",
		change_fn = mod_setting_change_callback,
		scope = MOD_SETTING_SCOPE_RUNTIME,
	},
	{
		id = "load",
		ui_name = "Load Profile",
		SAVE_NOT = true,
		ui_description = "Sets all Tweakeroo settings to the ones in the profile.",
		ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
			GuiColorSetForNextWidget(gui, 0.9, 0.4, 0.4, 0.8)
			if GuiButton(gui, im_id, mod_setting_group_x_offset, 0, setting.ui_name) then
				for index, value in ipairs(mod_settings) do
					if value.SAVE_NOT ~= true then
						ModSettingSet(
							"tweakeroo." .. value.id, tostring(ModSettingGet(
								"tweakeroo.profile" ..
								ModSettingGet(
									"tweakeroo.profile_text"
								) .. value.id
							))
						)
						ModSettingSetNextValue(
							"tweakeroo." .. value.id, tostring(ModSettingGet(
								"tweakeroo.profile" ..
								ModSettingGet(
									"tweakeroo.profile_text"
								) .. value.id
							)),
							false
						)
					end
				end
			end
			mod_setting_tooltip(mod_id, gui, in_main_menu, setting)
		end,
	},
	{
		id = "save",
		ui_name = "Save Profile",
		SAVE_NOT = true,
		ui_description = "Saves all Tweakeroo settings to the profile.",
		ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
			GuiColorSetForNextWidget(gui, 0.9, 0.4, 0.4, 0.8)
			if GuiButton(gui, im_id, mod_setting_group_x_offset, 0, setting.ui_name) then
				for index, value in ipairs(mod_settings) do
					if value.SAVE_NOT ~= true then
						ModSettingSet(
							"tweakeroo.profile" ..
							ModSettingGet(
								"tweakeroo.profile_text"
							) .. value.id,
							tostring(
								ModSettingGetNextValue(
									"tweakeroo." .. value.id
								)
							)
						)
						ModSettingSetNextValue(
							"tweakeroo.profile" ..
							ModSettingGet(
								"tweakeroo.profile_text"
							) .. value.id,
							tostring(
								ModSettingGetNextValue(
									"tweakeroo." .. value.id
								)
							),
							false
						)
					end
				end
				local profiles_raw = tostring(ModSettingGetNextValue("tweakeroo.saved_profiles"))
				print(profiles_raw)
				local profiles = {}
				for str in string.gmatch(profiles_raw, "([^,]+)") do
					table.insert(profiles, str)
				end
				local found = false
				for k, v in ipairs(profiles) do
					if v == ModSettingGetNextValue("tweakeroo.profile_text") then
						found = true
					end
				end
				if not found then
					ModSettingSet("tweakeroo.saved_profiles",
						profiles_raw .. "," .. ModSettingGetNextValue("tweakeroo.profile_text"))
					ModSettingSetNextValue("tweakeroo.saved_profiles",
						profiles_raw .. "," .. ModSettingGetNextValue("tweakeroo.profile_text"), false)
				end
			end
			mod_setting_tooltip(mod_id, gui, in_main_menu, setting)
		end,
	},
	{
		id = "profile_delete",
		ui_name = "Delete All Profile",
		SAVE_NOT = true,
		ui_description = "Deletes all Tweakeroo profiles. (Only visually)", -- technically only purges
		ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
			GuiColorSetForNextWidget(gui, 0.9, 0.4, 0.4, 0.8)
			if GuiButton(gui, im_id, mod_setting_group_x_offset, 0, setting.ui_name) then
				ModSettingSet("tweakeroo.saved_profiles", "")
				ModSettingSetNextValue("tweakeroo.saved_profiles", "", false)
			end
			mod_setting_tooltip(mod_id, gui, in_main_menu, setting)
		end,
	},
	{
		id = "profiles",
		ui_name = "",
		SAVE_NOT = true,
		ui_description = "",
		ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
			GuiText(gui, mod_setting_group_x_offset, 0, "Profiles") -- magic (scary)
			local profiles_raw = tostring(ModSettingGetNextValue("tweakeroo.saved_profiles"))
			local o = 1
			for str in string.gmatch(profiles_raw, "([^,]+)") do
				GuiText(gui, mod_setting_group_x_offset, o, str)
				o = o + 1
			end
			mod_setting_tooltip(mod_id, gui, in_main_menu, setting)
		end
	}
}

-- This function is called to ensure the correct setting values are visible to the game. your mod's settings don't work if you don't have a function like this defined in settings.lua.
function ModSettingsUpdate(init_scope)
	local old_version = mod_settings_get_version(mod_id) -- This can be used to migrate some settings between mod versions.
	mod_settings_update(mod_id, mod_settings, init_scope)
end

-- This function should return the number of visible setting UI elements.
-- Your mod's settings wont be visible in the mod settings menu if this function isn't defined correctly.
-- If your mod changes the displayed settings dynamically, you might need to implement custom logic for this function.
function ModSettingsGuiCount()
	return mod_settings_gui_count(mod_id, mod_settings)
end

-- This function is called to display the settings UI for this mod. your mod's settings wont be visible in the mod settings menu if this function isn't defined correctly.
function ModSettingsGui(gui, in_main_menu)
	mod_settings_gui(mod_id, mod_settings, gui, in_main_menu)
end
