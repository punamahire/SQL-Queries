
Roomates CRUD 
Insert or seed data:
SET IDENTITY_INSERT [dbo].[Chore] ON
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (1, N'Taking out the trash')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (2, N'Wash the dishes')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (3, N'Water the plants')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (4, N'Vacuum')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (5, N'Change air filters')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (6, N'Make bed')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (7, N'Do laundry')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (8, N'Mow the lawn')
INSERT INTO [dbo].[Chore] ([Id], [Name]) VALUES (9, N'Prepare dinner')
SET IDENTITY_INSERT [dbo].[Chore] OFF

SET IDENTITY_INSERT [dbo].[Room] ON
INSERT INTO [dbo].[Room] ([Id], [Name], [MaxOccupancy]) VALUES (1, N'Front Bedroom', 4)
INSERT INTO [dbo].[Room] ([Id], [Name], [MaxOccupancy]) VALUES (4, N'Kitchen', 2)
INSERT INTO [dbo].[Room] ([Id], [Name], [MaxOccupancy]) VALUES (5, N'Attic', 20)
INSERT INTO [dbo].[Room] ([Id], [Name], [MaxOccupancy]) VALUES (6, N'Basement', 12)
INSERT INTO [dbo].[Room] ([Id], [Name], [MaxOccupancy]) VALUES (8, N'Living Room', 7)
SET IDENTITY_INSERT [dbo].[Room] OFF

SET IDENTITY_INSERT [dbo].[Roommate] ON
INSERT INTO [dbo].[Roommate] ([Id], [FirstName], [LastName], [RentPortion], [MoveInDate], [RoomId]) VALUES (1, N'Wilma', N'Heartgoon', 10, N'2019-10-31 00:00:00', 8)
INSERT INTO [dbo].[Roommate] ([Id], [FirstName], [LastName], [RentPortion], [MoveInDate], [RoomId]) VALUES (2, N'Juan', N'Piesapestosos', 10, N'2019-10-31 00:00:00', 5)
INSERT INTO [dbo].[Roommate] ([Id], [FirstName], [LastName], [RentPortion], [MoveInDate], [RoomId]) VALUES (3, N'Karen', N'Kidsthesedays', 50, N'1981-07-01 00:00:00', 1)
SET IDENTITY_INSERT [dbo].[Roommate] OFF

SET IDENTITY_INSERT [dbo].[RoommateChore] ON
INSERT INTO [dbo].[RoommateChore] ([Id], [RoommateId], [ChoreId]) VALUES (4, 1, 2)
INSERT INTO [dbo].[RoommateChore] ([Id], [RoommateId], [ChoreId]) VALUES (9, 2, 5)
INSERT INTO [dbo].[RoommateChore] ([Id], [RoommateId], [ChoreId]) VALUES (10, 2, 8)
INSERT INTO [dbo].[RoommateChore] ([Id], [RoommateId], [ChoreId]) VALUES (11, 3, 9)
INSERT INTO [dbo].[RoommateChore] ([Id], [RoommateId], [ChoreId]) VALUES (12, 1, 1)
INSERT INTO [dbo].[RoommateChore] ([Id], [RoommateId], [ChoreId]) VALUES (13, 2, 6)
INSERT INTO [dbo].[RoommateChore] ([Id], [RoommateId], [ChoreId]) VALUES (14, 1, 4)
SET IDENTITY_INSERT [dbo].[RoommateChore] OFF
