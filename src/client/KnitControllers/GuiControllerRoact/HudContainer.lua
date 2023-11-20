local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Roact = require(ReplicatedStorage.Packages.roact)

return Roact.createElement("Frame", {
	AnchorPoint = Vector2.new(0.500, 0.500),
	BackgroundTransparency = 1,
	Position = UDim2.new(0.500, 0, 0.500, 0),
	Size = UDim2.new(1.000, 0, 1.000, 0),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
}, {
	SkipStageButton = Roact.createElement("ImageButton", {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Image = "rbxassetid://14106755226",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.936, 0, 0.588, 0),
		Size = UDim2.new(0.147, 0, 0.082, 0),
		-- Text = "Text",
		AnchorPoint = Vector2.new(0.500, 0.500),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		Icon = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(0.500, 0.500),
			Image = "rbxassetid://14106766041",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.206, 0, 0.522, 0),
			Transparency = 1,
			ZIndex = 2,
			Size = UDim2.new(0.260, 0, 0.557, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1.307692289352417,
			}),
		}),

		Text = Roact.createElement("TextLabel", {
			TextColor3 = Color3.fromRGB(255, 255, 255),
			
			Text = "Skip Stage",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Font = Enum.Font.FredokaOne,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.666, 0, 0.489, 0),
			Size = UDim2.new(0.571, 0, 0.514, 0),
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
				AspectRatio = 3.1111109256744385,
			}),

			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 26,
				MinTextSize = 1,
			}),
		}),

		UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 2.799999952316284,
		}),
	}),

	StoreButton = Roact.createElement("ImageButton", {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Image = "rbxassetid://14106789200",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.079, 0, 0.411, 0),
		Size = UDim2.new(0.147, 0, 0.082, 0),
		-- Text = "Text",
		AnchorPoint = Vector2.new(0.500, 0.500),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		Icon = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(0.500, 0.500),
			Image = "rbxassetid://14106787121",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.206, 0, 0.511, 0),
			Transparency = 1,
			ZIndex = 2,
			Size = UDim2.new(0.291, 0, 0.714, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1.1400001049041748,
			}),
		}),

		Text = Roact.createElement("TextLabel", {
			TextColor3 = Color3.fromRGB(255, 255, 255),
			
			Text = "STORE",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Font = Enum.Font.FredokaOne,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.666, 0, 0.516, 0),
			Size = UDim2.new(0.571, 0, 0.643, 0),
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
				AspectRatio = 2.48888897895813,
			}),

			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 45,
				MinTextSize = 1,
			}),
		}),

		UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 2.799999952316284,
		}),
	}),

	InviteButton = Roact.createElement("ImageButton", {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Image = "rbxassetid://14106791611",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.079, 0, 0.500, 0),
		Size = UDim2.new(0.147, 0, 0.082, 0),
		-- Text = "Text",
		AnchorPoint = Vector2.new(0.500, 0.500),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		Icon = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(0.500, 0.500),
			Image = "rbxassetid://14106792597",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.206, 0, 0.500, 0),
			Transparency = 1,
			ZIndex = 2,
			Size = UDim2.new(0.240, 0, 0.771, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 0.8703703880310059,
			}),
		}),

		Text = Roact.createElement("TextLabel", {
			TextColor3 = Color3.fromRGB(255, 255, 255),
			
			Text = "INVITE",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Font = Enum.Font.FredokaOne,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.666, 0, 0.505, 0),
			Size = UDim2.new(0.571, 0, 0.643, 0),
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
				AspectRatio = 2.48888897895813,
			}),

			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 39,
				MinTextSize = 1,
			}),
		}),

		UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 2.799999952316284,
		}),
	}),

	HubTPButton = Roact.createElement("ImageButton", {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Image = "rbxassetid://14106800251",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.079, 0, 0.590, 0),
		Size = UDim2.new(0.147, 0, 0.082, 0),
		AnchorPoint = Vector2.new(0.500, 0.500),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		Icon = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(0.500, 0.500),
			Image = "rbxassetid://14106801308",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.206, 0, 0.489, 0),
			Transparency = 1,
			ZIndex = 2,
			Size = UDim2.new(0.260, 0, 0.729, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
		}),

		TextLabel = Roact.createElement("TextLabel", {
			TextColor3 = Color3.fromRGB(255, 255, 255),
			
			Text = "TELEPORT TO SPAWN",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Font = Enum.Font.FredokaOne,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.666, 0, 0.495, 0),
			Size = UDim2.new(0.571, 0, 0.643, 0),
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
				AspectRatio = 2.48888897895813,
			}),

			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 35,
				MinTextSize = 1,
			}),
		}),

		UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 2.799999952316284,
		}),
	}),

	SettingsButton = Roact.createElement("ImageButton", {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Image = "rbxassetid://14106810177",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.936, 0, 0.410, 0),
		Size = UDim2.new(0.147, 0, 0.082, 0),
		-- Text = "Text",
		AnchorPoint = Vector2.new(0.500, 0.500),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		Icon = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(0.500, 0.500),
			Image = "rbxassetid://14106808394",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.206, 0, 0.479, 0),
			Transparency = 1,
			ZIndex = 2,
			Size = UDim2.new(0.250, 0, 0.729, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 0.9607843160629272,
			}),
		}),

		Text = Roact.createElement("TextLabel", {
			TextColor3 = Color3.fromRGB(255, 255, 255),
			
			Text = "SETTINGS",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Font = Enum.Font.FredokaOne,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.666, 0, 0.498, 0),
			Size = UDim2.new(0.571, 0, 0.643, 0),
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
				AspectRatio = 2.48888897895813,
			}),

			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 26,
				MinTextSize = 1,
			}),
		}),

		UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 2.799999952316284,
		}),

		OpenClose = Roact.createElement("LocalScript", {}),
	}),

	BagOTricksButton = Roact.createElement("ImageButton", {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Image = "rbxassetid://14106838685",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.936, 0, 0.499, 0),
		Size = UDim2.new(0.147, 0, 0.082, 0),
		-- Text = "Text",
		AnchorPoint = Vector2.new(0.500, 0.500),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		Icon = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			AnchorPoint = Vector2.new(0.500, 0.500),
			Image = "rbxassetid://14106815152",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.206, 0, 0.468, 0),
			Transparency = 1,
			ZIndex = 2,
			Size = UDim2.new(0.224, 0, 0.729, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 0.8627451062202454,
			}),
		}),

		Text = Roact.createElement("TextLabel", {
			TextColor3 = Color3.fromRGB(255, 255, 255),
			
			Text = "BAG O' TRICKS",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Font = Enum.Font.FredokaOne,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.650, 0, 0.491, 0),
			Size = UDim2.new(0.546, 0, 0.700, 0),
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
				AspectRatio = 2.18367338180542,
			}),

			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 48,
				MinTextSize = 1,
			}),
		}),

		UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 2.799999952316284,
		}),
	}),

	ProgressHeader = Roact.createElement("ImageLabel", {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		-- Text = "Text", 
		AnchorPoint = Vector2.new(0.500, 0.500),
		Transparency = 1,
		BackgroundTransparency = 1,
		Position = UDim2.new(0.500, 0, 0.054, 0),
		Image = "rbxassetid://14107172170",
		Size = UDim2.new(0.248, 0, 0.091, 0),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		StageCount = Roact.createElement("ImageLabel", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			-- Text = "Text",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Transparency = 1,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.500, 0, 1.422, 0),
			Image = "rbxassetid://14107175369",
			Size = UDim2.new(0.800, 0, 0.800, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			Text = Roact.createElement("TextLabel", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				
				Text = "1/100",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.503, 0, 0.499, 0),
				Size = UDim2.new(0.300, 0, 0.608, 0),
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
			}),

			Forward1Stage = Roact.createElement("TextButton", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				
				Text = ">",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.725, 0, 0.500, 0),
				Size = UDim2.new(0.150, 0, 1.000, 0),
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
			}),

			Back10Stages = Roact.createElement("TextButton", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				
				Text = "<<",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.120, 0, 0.500, 0),
				Size = UDim2.new(0.150, 0, 0.900, 0),
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
			}),

			Back1Stage = Roact.createElement("TextButton", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				
				Text = "<",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.275, 0, 0.500, 0),
				Size = UDim2.new(0.150, 0, 1.000, 0),
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
			}),

			Forward10Stages = Roact.createElement("TextButton", {
				TextColor3 = Color3.fromRGB(255, 255, 255),
				
				Text = ">>",
				AnchorPoint = Vector2.new(0.500, 0.500),
				Font = Enum.Font.FredokaOne,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.880, 0, 0.500, 0),
				Size = UDim2.new(0.150, 0, 0.900, 0),
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
			}),
		}),

		Text = Roact.createElement("TextLabel", {
			TextColor3 = Color3.fromRGB(255, 255, 255),
			
			Text = "PROGRESS",
			AnchorPoint = Vector2.new(0.500, 0.500),
			Font = Enum.Font.FredokaOne,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.501, 0, 0.493, 0),
			Size = UDim2.new(0.682, 0, 0.571, 0),
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
				AspectRatio = 5.113636016845703,
			}),

			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 44,
				MinTextSize = 1,
			}),
		}),

		UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 4.285714149475098,
		}),
	}),

	HotbarFrame = Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.500, 0.500),
		BackgroundTransparency = 1,
		Position = UDim2.new(0.500, 0, 0.900, 0),
		Size = UDim2.new(0.550, 0, 0.090, 0),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		UIGridLayout = Roact.createElement("UIGridLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			CellPadding = UDim2.new(0.010, 0, 0.000, 0),
			CellSize = UDim2.new(0.090, 0, 1.000, 0),
		}),

		HotbarSlot1 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.172, 0, 0.931, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "1",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.229, 0, 0.600, 0),
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
							AspectRatio = 0.380952388048172,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 21,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot2 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.244, 0, 0.931, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "2",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 20,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot3 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.317, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "3",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 20,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot4 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.390, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "4",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 20,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot5 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.463, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "5",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 21,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot6 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.536, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "6",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 21,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot7 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.609, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "7",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 21,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot8 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.682, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						
						Text = "8",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 21,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot9 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.755, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						Text = "9",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 21,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),

		HotbarSlot0 = Roact.createElement("ImageButton", {
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			Image = "rbxassetid://14107102460",
			BackgroundTransparency = 1,
			Position = UDim2.new(0.828, 0, 0.930, 0),
			Size = UDim2.new(0.050, 0, 0.106, 0),
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

				Keybind = Roact.createElement("ImageLabel", {
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					-- Text = "Text",
					AnchorPoint = Vector2.new(0.500, 0.500),
					Transparency = 1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.500, 0, 0.900, 0),
					Image = "rbxassetid://14107119925",
					Size = UDim2.new(0.389, 0, 0.389, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					Text = Roact.createElement("TextLabel", {
						TextColor3 = Color3.fromRGB(255, 255, 255),
						Text = "0",
						AnchorPoint = Vector2.new(0.500, 0.500),
						Font = Enum.Font.FredokaOne,
						BackgroundTransparency = 1,
						Position = UDim2.new(0.500, 0, 0.500, 0),
						Size = UDim2.new(0.286, 0, 0.600, 0),
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
							AspectRatio = 0.4761904776096344,
						}),

						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = 20,
							MinTextSize = 1,
						}),
					}),

					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
				}),
			}),
		}),
	}),
})
