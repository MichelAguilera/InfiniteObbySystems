local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Roact = require(ReplicatedStorage.Packages.roact)

return Roact.createElement("Frame", {
	AnchorPoint = Vector2.new(0.500, 0.500),
	BackgroundTransparency = 1,
	Position = UDim2.new(0.500, 0, 0.500, 0),
	Size = UDim2.new(1.000, 0, 1.000, 0),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
}, {
	SettingsFrame = Roact.createElement("ImageLabel", {
		AnchorPoint = Vector2.new(0.500, 0.500),
		Image = "rbxassetid://14107052716",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.500, 0, 0.542, 0),
		Size = UDim2.new(0.500, 0, 0.450, 0),
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Transparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		TitleFrame = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			
			AnchorPoint = Vector2.new(0.500, 0.500),
			Transparency = 1,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.499, 0, -0.011, 0),
			Image = "rbxassetid://14107054501",
			Size = UDim2.new(0.593, 0, 0.239, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			Text = Roact.createElement("TextLabel", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Text = "S E T T I N G S",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.500, 0, 0.500, 0),
				Size = UDim2.new(0.608, 0, 0.764, 0),
				ZIndex = 2,
				TextScaled = true,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				UIStroke = Roact.createElement("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
					LineJoinMode = Enum.LineJoinMode.Round,
					Color = Color3.fromRGB(0, 0, 0),
					Thickness = 3,
					Transparency = 0,
				}),

				UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
					AspectRatio = 3.690476179122925,
				}),

				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 54,
					MinTextSize = 1,
				}),
			}),

			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 4.636363506317139,
			}),
		}),

		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			AnchorPoint = Vector2.new(0.500, 0.500),
			Transparency = 1,
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Position = UDim2.new(0.499, 0, 0.537, 0),
			Size = UDim2.new(0.936, 0, 0.830, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			CanvasSize = UDim2.new(0.000, 0, 0.850, 0),
		}, {
			UIGridLayout = Roact.createElement("UIGridLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				CellPadding = UDim2.new(0.010, 0, 0.010, 0),
				CellSize = UDim2.new(0.470, 0, 0.320, 0),
			}),

			BackgroundMusic = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14107062997",
				BackgroundTransparency = 1,
				Size = UDim2.new(0.000, 100, 0.000, 100),
				
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Background Music",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.499, 0, 0.250, 0),
					Size = UDim2.new(0.447, 0, 0.273, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 5.733333110809326,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 28,
						MinTextSize = 1,
					}),
				}),

				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Toggle this to turn on and off the background music of the game",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.600, 0, 0.650, 0),
					Size = UDim2.new(0.655, 0, 0.364, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 6.299999713897705,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 21,
						MinTextSize = 1,
					}),
				}),

				CheckBox = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "rbxassetid://14107066866",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.151, 0, 0.496, 0),
					Size = UDim2.new(0.205, 0, 0.718, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Enabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107087750",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.696, 0, 0.595, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
							AspectRatio = 1.170212745666504,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),

					Disabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107082284",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.620, 0, 0.620, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
					}),
				}),
			}),

			EasyMode = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14107062997",
				BackgroundTransparency = 1,
				Size = UDim2.new(0.000, 100, 0.000, 100),
				
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Easy Mode",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.499, 0, 0.250, 0),
					Size = UDim2.new(0.447, 0, 0.273, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 5.733333110809326,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 28,
						MinTextSize = 1,
					}),
				}),

				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "This setting turns on and off the Easy Mode gamepass",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.600, 0, 0.650, 0),
					Size = UDim2.new(0.655, 0, 0.364, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 6.299999713897705,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 21,
						MinTextSize = 1,
					}),
				}),

				CheckBox = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "rbxassetid://14107066866",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.151, 0, 0.496, 0),
					Size = UDim2.new(0.205, 0, 0.718, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Enabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107087750",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.696, 0, 0.595, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
							AspectRatio = 1.170212745666504,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),

					Disabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107082284",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.620, 0, 0.620, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
					}),
				}),

				EasyModeToggle = Roact.createElement("LocalScript", {}),
			}),

			PlayerCollisions = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14107062997",
				BackgroundTransparency = 1,
				Size = UDim2.new(0.000, 100, 0.000, 100),
				
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "PlayerCollisions",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.499, 0, 0.250, 0),
					Size = UDim2.new(0.447, 0, 0.273, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 5.733333110809326,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 28,
						MinTextSize = 1,
					}),
				}),

				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Toggle this to enable and disable player collisions",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.600, 0, 0.650, 0),
					Size = UDim2.new(0.655, 0, 0.364, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 6.299999713897705,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 21,
						MinTextSize = 1,
					}),
				}),

				CheckBox = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "rbxassetid://14107066866",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.151, 0, 0.496, 0),
					Size = UDim2.new(0.205, 0, 0.718, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Enabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107087750",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.696, 0, 0.595, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
							AspectRatio = 1.170212745666504,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),

					Disabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107082284",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.620, 0, 0.620, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
					}),
				}),

				CollisionsToggle = Roact.createElement("LocalScript", {}),
			}),

			Radios = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14107062997",
				BackgroundTransparency = 1,
				Size = UDim2.new(0.000, 100, 0.000, 100),
				
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Radios",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.499, 0, 0.250, 0),
					Size = UDim2.new(0.447, 0, 0.273, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 5.733333110809326,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 28,
						MinTextSize = 1,
					}),
				}),

				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Toggle this to enable and disable sounds that come from radios",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.600, 0, 0.650, 0),
					Size = UDim2.new(0.655, 0, 0.364, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 6.299999713897705,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 21,
						MinTextSize = 1,
					}),
				}),

				CheckBox = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "rbxassetid://14107066866",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.151, 0, 0.496, 0),
					Size = UDim2.new(0.205, 0, 0.718, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Enabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107087750",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.696, 0, 0.595, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
							AspectRatio = 1.170212745666504,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),

					Disabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107082284",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.620, 0, 0.620, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
					}),
				}),
			}),

			VIPChatTag = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14107062997",
				BackgroundTransparency = 1,
				Size = UDim2.new(0.000, 100, 0.000, 100),
				
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "VIP Chat Tag",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.499, 0, 0.250, 0),
					Size = UDim2.new(0.447, 0, 0.273, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 5.733333110809326,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 28,
						MinTextSize = 1,
					}),
				}),

				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Toggle this to turn on and off your VIP tag that appears in chat",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.600, 0, 0.650, 0),
					Size = UDim2.new(0.655, 0, 0.364, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 6.299999713897705,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 21,
						MinTextSize = 1,
					}),
				}),

				CheckBox = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "rbxassetid://14107066866",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.151, 0, 0.496, 0),
					Size = UDim2.new(0.205, 0, 0.718, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Enabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107087750",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.696, 0, 0.595, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
							AspectRatio = 1.170212745666504,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),

					Disabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107082284",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.620, 0, 0.620, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
					}),
				}),
			}),

			DevChatTag = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14107062997",
				BackgroundTransparency = 1,
				Size = UDim2.new(0.000, 100, 0.000, 100),
				
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Dev Chat Tag",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.499, 0, 0.250, 0),
					Size = UDim2.new(0.447, 0, 0.273, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 5.733333110809326,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 28,
						MinTextSize = 1,
					}),
				}),

				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "This setting turns on and off your Developer chat tag",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.600, 0, 0.650, 0),
					Size = UDim2.new(0.655, 0, 0.364, 0),
					ZIndex = 2,
					TextScaled = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
						LineJoinMode = Enum.LineJoinMode.Round,
						Color = Color3.fromRGB(0, 0, 0),
						Thickness = 3,
						Transparency = 0,
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 6.299999713897705,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 21,
						MinTextSize = 1,
					}),
				}),

				CheckBox = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "rbxassetid://14107066866",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.151, 0, 0.496, 0),
					Size = UDim2.new(0.205, 0, 0.718, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Enabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107087750",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.696, 0, 0.595, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
							AspectRatio = 1.170212745666504,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),

					Disabled = Roact.createElement("ImageButton", {
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Image = "rbxassetid://14107082284",
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.620, 0, 0.620, 0),
						AnchorPoint = Vector2.new(0.500, 0.500),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
					}),
				}),
			}),
		}),
	}),
})
