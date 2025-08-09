local brainrot = script.Parent
local DEBOUNCE_TIME = 1 -- 1 second cooldown before another pickup

local lastPickup = {}

brainrot.Touched:Connect(function(hit)
    local player = game.Players:GetPlayerFromCharacter(hit.Parent)
    if player then
        -- debounce check
        if lastPickup[player] and tick() - lastPickup[player] < DEBOUNCE_TIME then
            return
        end
        lastPickup[player] = tick()

        -- Give the player the brainrot (example: add to leaderstats)
        local stats = player:FindFirstChild("leaderstats")
        if stats then
            local brainrots = stats:FindFirstChild("Brainrots")
            if brainrots then
                brainrots.Value = brainrots.Value + 1
            end
        end

        -- Optionally remove brainrot from map
        brainrot.Transparency = 1
        brainrot.CanTouch = false
        wait(1) -- respawn delay
        brainrot.Transparency = 0
        brainrot.CanTouch = true
    end
end)
