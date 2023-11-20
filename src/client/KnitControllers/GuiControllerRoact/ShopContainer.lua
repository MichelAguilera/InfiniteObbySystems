local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Roact = require(ReplicatedStorage.Packages.roact)

return Roact.createElement("Frame", {
	AnchorPoint = Vector2.new(0.500, 0.500),
	BackgroundTransparency = 1,
	Position = UDim2.new(0.500, 0, 0.500, 0),
	Size = UDim2.new(1.000, 0, 1.000, 0),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
}, {
	ShopFrame = Roact.createElement("ImageLabel", {
		AnchorPoint = Vector2.new(0.500, 0.500),
		Image = "rbxassetid://14106861014",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.500, 0, 0.542, 0),
		Size = UDim2.new(0.450, 0, 0.400, 0),
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
			Image = "rbxassetid://14106864239",
			Size = UDim2.new(0.593, 0, 0.239, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			Text = Roact.createElement("TextLabel", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Text = "S H O P",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.500, 0, 0.500, 0),
				Size = UDim2.new(0.412, 0, 0.682, 0),
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
					AspectRatio = 2.799999713897705,
				}),

				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 72,
					MinTextSize = 1,
				}),
			}),

			LeftDirectional = Roact.createElement("TextButton", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Text = "<",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.079, 0, 0.498, 0),
				Size = UDim2.new(0.098, 0, 0.509, 0),
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
					AspectRatio = 0.8928570747375488,
				}),

				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 56,
					MinTextSize = 1,
				}),
			}),

			RightDirectional = Roact.createElement("TextButton", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Text = ">",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.920, 0, 0.498, 0),
				Size = UDim2.new(0.098, 0, 0.509, 0),
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
					AspectRatio = 0.8928570747375488,
				}),

				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 56,
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
			Position = UDim2.new(0.333, 0, 0.537, 0),
			Size = UDim2.new(0.581, 0, 0.830, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			CanvasSize = UDim2.new(0.000, 0, 2.000, 0),
		}, {
			ShopItem = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14106923985",
				BackgroundTransparency = 1,
				Size = UDim2.new(0.000, 100, 0.000, 100),
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				ImageLabel = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.500, 0),
					Size = UDim2.new(0.950, 0, 0.950, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0.200, 0),
					}),
				}),
			}),

			UIGridLayout = Roact.createElement("UIGridLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				CellPadding = UDim2.new(0.010, 0, 0.010, 0),
				CellSize = UDim2.new(0.220, 0, 0.095, 0),
			}),
		}),

		SidePanel = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.500, 0.500),
			Image = "rbxassetid://14106943310",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.799, 0, 0.520, 0),
			Size = UDim2.new(0.294, 0, 0.793, 0),
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Transparency = 1,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			ItemViewport = Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.500, 0.500),
				Image = "rbxassetid://14106955747",
				BackgroundTransparency = 1,
				Position = UDim2.new(0.499, 0, 0.217, 0),
				Size = UDim2.new(0.907, 0, 0.329, 0),
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Transparency = 1,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				ImageLabel = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.500, 0.500),
					Image = "",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.500, 0),
					Size = UDim2.new(0.950, 0, 0.950, 0),
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0.200, 0),
					}),
				}),
			}),

			PurchaseButton = Roact.createElement("ImageButton", {
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				Image = "rbxassetid://14106960035",
				BackgroundTransparency = 1,
				Position = UDim2.new(0.499, 0, 0.863, 0),
				Size = UDim2.new(0.907, 0, 0.164, 0),
				
				AnchorPoint = Vector2.new(0.500, 0.500),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				Text = Roact.createElement("TextLabel", {
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Text = "Purchase.",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Font = Enum.Font.FredokaOne,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.499, 0, 0.486, 0),
					Size = UDim2.new(0.653, 0, 0.667, 0),
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
						AspectRatio = 3.999999523162842,
					}),

					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 40,
						MinTextSize = 1,
					}),
				}),

				UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
					AspectRatio = 4.0833330154418945,
				}),
			}),

			Description = Roact.createElement("TextLabel", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Text = "Description: This is anexample of a item desc.",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.480, 0, 0.500, 0),
				Size = UDim2.new(0.844, 0, 0.200, 0),
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

				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 42,
					MinTextSize = 1,
				}),
			}),

			Price = Roact.createElement("TextLabel", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Text = "Price: 1,000,000 Points",
				AnchorPoint = Vector2.new(0.000, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.070, 0, 0.700, 0),
				Size = UDim2.new(0.900, 0, 0.066, 0),
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

				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 23,
					MinTextSize = 1,
				}),
			}),
		}),
	}),
})
