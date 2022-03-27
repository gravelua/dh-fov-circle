_G.FOVCIRCLE = true
local circle = Drawingnew("Circle")
circle.Transparency = 1
circle.Thickness = 2
circle.Color = Aiming.FOVColour
circle.Filled = false
function Aiming.UpdateFOV()
    if (circle) then
        circle.Visible = Aiming.ShowFOV
        circle.Radius = (Aiming.FOV * 3)
        circle.Position = Vector2new(Mouse.X, Mouse.Y + GetGuiInset(GuiService).Y)
        circle.NumSides = Aiming.FOVSides
        circle.Color = Aiming.FOVColour

        return circle
    end
end
