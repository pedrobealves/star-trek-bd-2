--BASE SQL INSERTS

-- BEGIN DEPARTMENT LIST

INSERT INTO department (id, name) VALUES (1, 'Comando');
INSERT INTO department (id, name) VALUES (2, 'Diplomacia');
INSERT INTO department (id, name) VALUES (3, 'Engenharia');
INSERT INTO department (id, name) VALUES (4, 'Seguranca');
INSERT INTO department (id, name) VALUES (5, 'Ciencia');
INSERT INTO department (id, name) VALUES (6, 'Medicina');


-- END DEPARTMENT LIST

-- BEGIN CREW LIST

INSERT INTO crew (id, active_status, date_birth, date_joined, first_name, last_name, rank, species, department_id)
VALUES
  (1, true, '2330-01-01', '2360-05-15', 'John', 'Smith', 3, 'Human', 3),
  (2, true, '2325-02-12', '2358-08-22', 'Jane', 'Doe', 4, 'Vulcan', 2),
  (3, true, '2332-07-05', '2362-11-30', 'Michael', 'Johnson', 2, 'Bajoran', 4),
  (4, true, '2328-09-20', '2365-04-10', 'Emily', 'Anderson', 1, 'Human', 1),
  (5, false, '2333-06-15', '2367-08-18', 'David', 'Brown', 3, 'Betazoid', 5),
  (6, true, '2331-12-03', '2361-03-27', 'Jessica', 'Lee', 4, 'Klingon', 3),
  (7, true, '2334-05-18', '2364-09-02', 'Andrew', 'Taylor', 2, 'Trill', 2),
  (8, false, '2336-08-22', '2368-11-10', 'Olivia', 'Thomas', 1, 'Andorian', 1),
  (9, true, '2332-03-07', '2364-07-14', 'Daniel', 'Martin', 3, 'Human', 4),
  (10, true, '2329-11-15', '2359-12-20', 'Sophia', 'Wilson', 4, 'Vulcan', 5),
  (11, true, '2333-04-25', '2362-06-10', 'Matthew', 'Harris', 2, 'Human', 6),
  (12, true, '2330-09-10', '2360-12-03', 'Emma', 'Clark', 1, 'Bajoran', 1),
  (13, false, '2335-06-08', '2366-07-18', 'Christopher', 'Anderson', 3, 'Human', 2),
  (14, true, '2332-01-14', '2364-03-27', 'Ava', 'Lewis', 4, 'Klingon', 3),
  (15, true, '2336-03-19', '2367-04-30', 'Jacob', 'Johnson', 2, 'Trill', 4),
  (16, false, '2333-08-21', '2365-11-09', 'Mia', 'Hall', 1, 'Andorian', 5),
  (17, true, '2328-06-29', '2359-08-15', 'Ethan', 'Young', 3, 'Human', 6),
  (18, true, '2331-02-12', '2361-04-28', 'Isabella', 'White', 4, 'Vulcan', 1),
  (19, true, '2334-09-08', '2364-12-20', 'Alexander', 'Adams', 2, 'Human', 2),
  (20, false, '2337-04-25', '2367-07-03', 'Abigail', 'Garcia', 1, 'Bajoran', 3),
  (21, true, '2332-11-11', '2363-01-02', 'Benjamin', 'Wilson', 3, 'Human', 4),
  (22, true, '2335-06-03', '2366-08-12', 'Grace', 'Mitchell', 4, 'Klingon', 5),
  (23, false, '2333-01-28', '2364-04-05', 'Lucas', 'Scott', 2, 'Trill', 6),
  (24, true, '2328-08-20', '2359-10-18', 'Chloe', 'Walker', 1, 'Andorian', 1),
  (25, true, '2330-05-07', '2360-06-24', 'Zoe', 'Hall', 3, 'Human', 2),
  (26, false, '2335-12-21', '2366-03-05', 'Nathan', 'Lopez', 4, 'Vulcan', 3),
  (27, true, '2332-09-14', '2363-12-01', 'Madison', 'Hernandez', 2, 'Human', 4),
  (28, true, '2327-04-08', '2359-06-21', 'Aiden', 'Miller', 1, 'Bajoran', 5),
  (29, false, '2331-12-01', '2363-02-20', 'Lily', 'Gonzalez', 3, 'Human', 6),
  (30, true, '2334-05-09', '2365-08-18', 'Jack', 'Young', 4, 'Klingon', 1),
  (31, true, '2332-02-27', '2363-05-15', 'Sophie', 'Turner', 2, 'Trill', 2),
  (32, false, '2329-07-12', '2360-09-29', 'Daniel', 'Wright', 1, 'Andorian', 3),
  (33, true, '2331-04-25', '2361-06-30', 'Avery', 'Collins', 3, 'Human', 4),
  (34, true, '2334-09-30', '2365-12-22', 'Scarlett', 'Parker', 4, 'Vulcan', 5),
  (35, false, '2332-12-13', '2364-03-01', 'Henry', 'Adams', 2, 'Human', 6),
  (36, true, '2328-11-20', '2359-02-05', 'Hailey', 'Lewis', 1, 'Bajoran', 1),
  (37, true, '2330-03-05', '2361-05-18', 'Leo', 'King', 3, 'Human', 2),
  (38, false, '2335-02-01', '2366-04-20', 'Elizabeth', 'Mitchell', 4, 'Klingon', 3),
  (39, true, '2332-07-28', '2363-10-05', 'Carter', 'Taylor', 2, 'Trill', 4),
  (40, true, '2327-04-21', '2359-07-10', 'Scarlet', 'Scott', 1, 'Andorian', 5),
  (41, true, '2330-12-08', '2362-02-15', 'Ryan', 'Lee', 3, 'Human', 6),
  (42, false, '2333-05-02', '2364-07-20', 'Hannah', 'Moore', 4, 'Vulcan', 1),
  (43, true, '2335-10-10', '2366-12-18', 'Christian', 'Williams', 2, 'Human', 2),
  (44, true, '2332-11-22', '2363-02-10', 'Victoria', 'Clark', 1, 'Bajoran', 3),
  (45, false, '2329-02-15', '2360-04-28', 'Samuel', 'Rodriguez', 3, 'Human', 4),
  (46, true, '2331-05-30', '2362-07-31', 'Ella', 'Walker', 4, 'Klingon', 5),
  (47, true, '2334-01-13', '2365-03-25', 'Dylan', 'Moore', 2, 'Trill', 6),
  (48, false, '2329-09-06', '2360-11-10', 'Natalie', 'Perez', 1, 'Andorian', 1),
  (49, true, '2331-06-02', '2361-08-20', 'Gabriel', 'Turner', 3, 'Human', 2),
  (50, true, '2334-03-25', '2365-06-05', 'Liam', 'Gonzalez', 4, 'Vulcan', 3),
  (51, true, '2347-03-15', '2367-08-28', 'Elizabeth', 'Johnson', 3, 'Human', 5),
  (52, true, '2333-11-23', '2354-06-12', 'Jonathan', 'Brown', 4, 'Human', 3),
  (53, false, '2352-07-17', '2372-02-29', 'TPau', 'TKuvma', 2, 'Klingon', 2),
  (54, true, '2341-05-09', '2361-10-22', 'Jean-Luc', 'Picard', 1, 'Human', 1),
  (55, true, '2349-09-27', '2369-04-11', 'Kira', 'Nerys', 3, 'Bajoran', 6),
  (56, false, '2336-04-03', '2355-09-16', 'Data', '', 4, 'Android', 4),
  (57, true, '2347-01-14', '2366-06-27', 'Deanna', 'Troi', 2, 'Betazoid', 5),
  (58, true, '2344-08-04', '2364-01-18', 'Worf', 'Son of Mogh', 1, 'Klingon', 2),
  (59, false, '2340-05-22', '2360-11-04', 'Geordi', 'La Forge', 3, 'Human', 3),
  (60, true, '2342-12-27', '2362-06-09', 'Beverly', 'Crusher', 4, 'Human', 1),
  (61, true, '2349-09-27', '2369-04-11', 'Ezri', 'Dax', 2, 'Trill', 2),
  (62, false, '2353-07-11', '2373-12-24', 'Quark', '', 1, 'Ferengi', 3),
  (63, true, '2346-06-18', '2366-11-30', 'Julian', 'Bashir', 3, 'Human', 4),
  (64, true, '2342-12-04', '2362-05-17', 'Ro', 'Laren', 4, 'Bajoran', 5),
  (65, false, '2349-05-11', '2369-10-24', 'Miles', 'OBrien', 2, 'Human', 6),
  (66, true, '2343-10-16', '2363-03-01', 'Tuvok', '', 1, 'Vulcan', 1),
  (67, true, '2346-06-03', '2366-11-15', 'Will', 'Riker', 3, 'Human', 2),
  (68, false, '2341-08-15', '2361-01-29', 'Jadzia', 'Dax', 4, 'Trill', 3),
  (69, true, '2337-02-13', '2356-07-28', 'Marta', 'Batánides', 2, 'Bajoran', 4),
  (70, true, '2351-11-28', '2371-05-12', 'BElanna', 'Torres', 1, 'Klingon', 5),
  (71, false, '2348-10-13', '2368-03-28', 'Reginald', 'Barclay', 3, 'Human', 6),
  (72, true, '2354-09-20', '2374-03-06', 'Kathryn', 'Janeway', 4, 'Human', 1),
  (73, true, '2352-06-26', '2371-12-10', 'Tuvok', '', 2, 'Vulcan', 2),
  (74, false, '2346-11-02', '2366-04-17', 'Natasha', 'Yar', 1, 'Human', 3),
  (75, true, '2344-08-21', '2364-02-04', 'Wesley', 'Crusher', 3, 'Human', 4),
  (76, true, '2349-03-06', '2368-08-19', 'Lwaxana', 'Troi', 4, 'Betazoid', 5),
  (77, false, '2351-12-22', '2371-06-06', 'Neelix', '', 2, 'Talaxian', 6),
  (78, true, '2346-11-09', '2366-04-23', 'Regina', 'Bartholomew', 1, 'Human', 1),
  (79, true, '2342-02-28', '2361-08-13', 'Joseph', 'Sisko', 3, 'Human', 2),
  (80, false, '2348-09-13', '2368-02-28', 'Kasidy', 'Yates', 4, 'Human', 3),
  (81, true, '2352-02-09', '2371-07-26', 'The Doctor', '', 2, 'Hologram', 4),
  (82, true, '2346-12-25', '2366-06-08', 'Guinan', '', 1, 'El-Aurian', 5),
  (83, false, '2349-11-11', '2369-04-26', 'Seska', '', 3, 'Cardassian', 6),
  (84, true, '2344-07-26', '2364-01-09', 'Nog', '', 4, 'Ferengi', 1),
  (85, true, '2349-04-13', '2368-09-26', 'Hugh', '', 2, 'Borg', 2),
  (86, false, '2352-10-30', '2372-04-13', 'Q', '', 1, 'Q', 3),
  (87, true, '2347-09-14', '2367-02-26', 'Ro', 'Laren', 3, 'Bajoran', 4),
  (88, true, '2352-07-01', '2371-12-15', 'Naomi', 'Wilde', 4, 'Human', 5),
  (89, false, '2346-11-27', '2366-05-12', 'Ezri', 'Dax', 2, 'Trill', 6),
  (90, true, '2349-09-04', '2369-02-18', 'Nog', '', 1, 'Ferengi', 1),
  (91, true, '2343-07-20', '2363-01-03', 'Miles', 'OBrien', 3, 'Human', 2),
  (92, false, '2348-04-17', '2367-10-01', 'Reginald', 'Barclay', 4, 'Human', 3),
  (93, true, '2352-01-01', '2371-06-16', 'Keiko', 'OBrien', 2, 'Human', 4),
  (94, true, '2346-10-16', '2366-04-01', 'Guinan', '', 1, 'El-Aurian', 5),
  (95, false, '2349-07-03', '2368-12-16', 'Elim', 'Garak', 3, 'Cardassian', 6),
  (96, true, '2344-06-19', '2363-12-03', 'Jake', 'Sisko', 4, 'Human', 1),
  (97, true, '2349-03-06', '2368-08-19', 'Tora', 'Ziyal', 2, 'Bajoran', 2),
  (98, false, '2352-02-09', '2371-07-26', 'The Doctor', '', 1, 'Hologram', 3),
  (99, true, '2346-12-25', '2366-06-08', 'Q', '', 3, 'Q', 4),
  (100, true, '2349-11-11', '2369-04-26', 'Seska', '', 4, 'Cardassian', 5),
  (101, false, '2343-05-20', '2363-07-12', 'Robert', 'Wilson', 2, 'Trill', 2),
  (102, false, '2346-03-10', '2366-06-08', 'Emma', 'Anderson', 3, 'Bolian', 3),
  (103, false, '2340-11-03', '2365-10-25', 'David', 'Martinez', 4, 'Andorian', 4),
  (104, false, '2342-07-15', '2366-01-16', 'Olivia', 'Thompson', 1, 'Betazoid', 1),
  (105, false, '2343-12-28', '2363-06-05', 'James', 'Brown', 2, 'Ferengi', 2),
  (106, false, '2341-09-01', '2365-12-15', 'Sophia', 'Taylor', 3, 'Cardassian', 3),
  (107, false, '2338-04-09', '2364-09-01', 'Daniel', 'Miller', 4, 'Bajoran', 4),
  (108, false, '2344-01-12', '2366-03-20', 'Ava', 'Garcia', 1, 'Human', 5),
  (109, false, '2343-06-25', '2363-10-15', 'Mia', 'Davis', 2, 'Vulcan', 6),
  (110, false, '2341-11-05', '2365-04-25', 'William', 'Rodriguez', 3, 'Klingon', 1),
  (111, false, '2346-02-18', '2366-08-08', 'Isabella', 'Wilson', 4, 'Trill', 2),
  (112, false, '2344-07-31', '2366-02-20', 'Alexander', 'Martinez', 1, 'Bolian', 3),
  (113, false, '2341-02-13', '2365-06-22', 'Sofia', 'Johnson', 2, 'Andorian', 4),
  (114, false, '2345-10-26', '2365-03-07', 'Benjamin', 'Brown', 3, 'Betazoid', 5),
  (115, false, '2344-08-08', '2364-04-28', 'Gabriel', 'Garcia', 4, 'Ferengi', 6),
  (116, false, '2342-05-21', '2366-07-31', 'Natalie', 'Davis', 1, 'Cardassian', 1),
  (117, false, '2343-09-03', '2363-12-24', 'Charlotte', 'Smith', 2, 'Bajoran', 2),
  (118, false, '2340-04-16', '2365-09-13', 'Lucas', 'Johnson', 3, 'Human', 3),
  (119, false, '2342-01-29', '2364-05-08', 'Andrew', 'Davis', 4, 'Vulcan', 4),
  (120, false, '2344-03-12', '2366-07-22', 'Zoe', 'Anderson', 1, 'Klingon', 5),
  (121, false, '2345-07-25', '2365-11-15', 'Penelope', 'Wilson', 2, 'Trill', 6),
  (122, false, '2343-03-08', '2363-08-28', 'Wyatt', 'Martinez', 3, 'Bolian', 1),
  (123, false, '2342-11-20', '2365-10-01', 'Henry', 'Thompson', 4, 'Andorian', 2),
  (124, false, '2344-08-02', '2366-02-12', 'Lily', 'Brown', 1, 'Betazoid', 3),
  (125, false, '2342-02-15', '2364-06-22', 'Aiden', 'Garcia', 2, 'Ferengi', 4),
  (126, false, '2343-12-28', '2363-12-31', 'Leah', 'Davis', 3, 'Cardassian', 5),
  (127, false, '2340-11-10', '2365-03-20', 'Ryan', 'Johnson', 4, 'Bajoran', 6),
  (128, false, '2342-05-23', '2363-07-14', 'Daniel', 'Smith', 1, 'Human', 1),
  (129, false, '2344-09-05', '2365-01-25', 'Sophia', 'Davis', 2, 'Vulcan', 2),
  (130, false, '2340-06-18', '2366-10-08', 'Noah', 'Anderson', 3, 'Klingon', 3),
  (131, false, '2345-03-31', '2365-08-20', 'Emily', 'Wilson', 4, 'Trill', 4),
  (132, false, '2343-11-13', '2363-10-02', 'Mason', 'Martinez', 1, 'Bolian', 5),
  (133, false, '2342-07-26', '2365-01-12', 'Avery', 'Thompson', 2, 'Andorian', 6),
  (134, false, '2345-05-08', '2365-09-28', 'Jackson', 'Brown', 3, 'Betazoid', 1),
  (135, false, '2343-08-21', '2363-12-11', 'Ella', 'Garcia', 4, 'Ferengi', 2),
  (136, false, '2340-01-03', '2365-03-15', 'Scarlett', 'Davis', 1, 'Cardassian', 3),
  (137, false, '2344-03-16', '2364-08-05', 'Matthew', 'Johnson', 2, 'Bajoran', 4),
  (138, false, '2342-10-29', '2365-02-19', 'Victoria', 'Smith', 3, 'Human', 5),
  (139, false, '2340-05-12', '2363-09-01', 'Madison', 'Davis', 4, 'Vulcan', 6),
  (140, false, '2344-02-25', '2366-06-15', 'David', 'Anderson', 1, 'Klingon', 1),
  (141, false, '2345-10-08', '2365-01-28', 'Samuel', 'Wilson', 2, 'Trill', 2),
  (142, false, '2343-04-21', '2363-08-10', 'Layla', 'Martinez', 3, 'Bolian', 3),
  (143, false, '2341-12-03', '2365-09-23', 'Joseph', 'Thompson', 4, 'Andorian', 4),
  (144, false, '2345-07-16', '2365-12-05', 'Abigail', 'Brown', 1, 'Betazoid', 5),
  (145, false, '2343-02-28', '2363-07-19', 'Christopher', 'Garcia', 2, 'Ferengi', 6),
  (146, false, '2340-10-12', '2365-12-31', 'Elizabeth', 'Davis', 3, 'Cardassian', 1),
  (147, false, '2344-05-25', '2364-09-14', 'Andrew', 'Johnson', 4, 'Bajoran', 2),
  (148, false, '2342-12-07', '2364-08-27', 'Sofia', 'Smith', 1, 'Human', 3),
  (149, false, '2345-09-20', '2365-02-09', 'Samuel', 'Davis', 2, 'Vulcan', 4),
  (150, false, '2341-04-03', '2366-07-29', 'Charlotte', 'Anderson', 3, 'Klingon', 5);


-- END CREW LIST

-- BEGIN SHIP LIST

INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (1, 5, 100, 'USS Enterprise', 1);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (2, 3, 50, 'USS Voyager', 2);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (3, 4, 80, 'USS Defiant', 3);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (4, 2, 30, 'USS Discovery', 4);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (5, 3, 50, 'USS Enterprise-D', 5);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (6, 1, 20, 'USS Excelsior', 6);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (7, 4, 80, 'USS Enterprise-E', 7);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (8, 2, 30, 'USS Stargazer', 8);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (9, 3, 50, 'USS Prometheus', 9);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (10, 5, 100, 'USS Titan', 10);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (11, 1, 20, 'USS Saratoga', 11);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (12, 4, 80, 'USS Reliant', 12);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (13, 3, 50, 'USS Hood', 13);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (14, 2, 30, 'USS Challenger', 14);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (15, 5, 100, 'USS Yorktown', 15);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (16, 1, 20, 'USS Intrepid', 16);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (17, 4, 80, 'USS Lexington', 17);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (18, 3, 50, 'USS Constellation', 18);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (19, 2, 30, 'USS Endeavour', 19);
INSERT INTO ship (id, level, max_crew_size, name, captain_id) VALUES (20, 5, 100, 'USS Atlantis', 20);

-- END SHIP LIST

-- BEGIN PLANET LIST

INSERT INTO planet (id, diameter, name, orbital_period, planet_type, star_system, surface_temp) VALUES
(1, 12742, 'Terra', 365.25, 'M', 'Sistema Solar', 15),
(2, 15100, 'Vulcano', 382.82, 'L', 'Sistema 40 Eridani', 800),
(3, 15367, 'Kronos', 462.12, 'G', 'Sistema Klingon', -40),
(4, 8720, 'Rigel IV', 135.45, 'M', 'Sistema Rigel', -160),
(5, 12590, 'Betazed', 571.38, 'P', 'Sistema Betazed', 22),
(6, 11000, 'Andoria', 613.49, 'T', 'Sistema Andoria', -130),
(7, 11789, 'Tellar Prime', 687.95, 'G', 'Sistema Tellar', -30),
(8, 12000, 'Ferenginar', 1900.56, 'L', 'Sistema Ferengi', 40),
(9, 9600, 'Trill', 392.45, 'M', 'Sistema Trill', 25),
(10, 12200, 'Bajor', 376.15, 'P', 'Sistema Bajor', 18),
(11, 9950, 'Cardassia Prime', 489.22, 'G', 'Sistema Cardassia', 35),
(12, 11200, 'Romulus', 549.67, 'M', 'Sistema Romulus', -120),
(13, 10900, 'Remus', 549.67, 'M', 'Sistema Romulus', -120),
(14, 14420, 'Qo''noS', 1004.79, 'T', 'Sistema Klingon', -50),
(15, 13780, 'Talos IV', 621.91, 'L', 'Sistema Talos', 28),
(16, 9900, 'Risa', 371.59, 'P', 'Sistema Risa', 30),
(17, 9800, 'P''Jem', 394.45, 'M', 'Sistema P''Jem', 12),
(18, 10600, 'Nibiru', 423.76, 'M', 'Sistema Nibiru', 24),
(19, 11500, 'Tellar', 698.21, 'G', 'Sistema Tellar', -30),
(20, 10500, 'Andor', 564.23, 'T', 'Sistema Andoria', -140),
(21, 10000, 'Coridan', 443.58, 'M', 'Sistema Coridan', 30),
(22, 11400, 'Tellar II', 742.89, 'G', 'Sistema Tellar', -25),
(23, 9800, 'Nimbus III', 390.55, 'M', 'Sistema Nimbus', 50),
(24, 8900, 'Benzar', 298.47, 'M', 'Sistema Benzar', -100),
(25, 10150, 'Minos', 415.68, 'M', 'Sistema Minos', 20),
(26, 9700, 'Vagra II', 401.45, 'M', 'Sistema Vagra', 15),
(27, 9900, 'Breen', 401.45, 'M', 'Sistema Breen', -120),
(28, 9400, 'Malcor III', 350.58, 'M', 'Sistema Malcor', 10),
(29, 11200, 'Krios Prime', 590.76, 'T', 'Sistema Krios', 32),
(30, 12500, 'Delphi Ardu', 790.85, 'L', 'Sistema Delphi', -15),
(31, 12300, 'Terra Nova', 425.78, 'M', 'Sistema Terra Nova', -20),
(32, 10350, 'Berengaria VII', 486.65, 'M', 'Sistema Berengaria', 18),
(33, 11900, 'Gideon', 675.95, 'G', 'Sistema Gideon', 22),
(34, 10500, 'Camor V', 410.25, 'M', 'Sistema Camor', 28),
(35, 13560, 'Pandora', 916.68, 'L', 'Sistema Pandora', 40),
(36, 9300, 'New Caprica', 351.45, 'M', 'Sistema New Caprica', 12),
(37, 12780, 'Nimbus IV', 753.68, 'T', 'Sistema Nimbus', 30),
(38, 10600, 'Vulcanus', 490.56, 'G', 'Sistema 40 Eridani', 800),
(39, 9700, 'Jupiter Station', 401.45, 'M', 'Sistema Sol', 18),
(40, 11400, 'Yadera II', 742.89, 'G', 'Sistema Yadera', -25),
(41, 9800, 'Zeta Alpha', 390.55, 'M', 'Sistema Zeta', 50),
(42, 8900, 'Corvallis', 298.47, 'M', 'Sistema Corvallis', -100),
(43, 10150, 'Antede III', 415.68, 'M', 'Sistema Antede', 20),
(44, 9700, 'Gideon IV', 401.45, 'M', 'Sistema Gideon', 15),
(45, 9900, 'Valakis', 401.45, 'M', 'Sistema Valakis', -120),
(46, 9400, 'Minos Korva', 350.58, 'M', 'Sistema Minos', 10),
(47, 11200, 'Krios Minor', 590.76, 'T', 'Sistema Krios', 32),
(48, 12500, 'Thasus', 790.85, 'L', 'Sistema Thasus', -15),
(49, 12300, 'Terra Elysium', 425.78, 'M', 'Sistema Terra Elysium', -20),
(50, 10350, 'Icaria Prime', 486.65, 'M', 'Sistema Icaria', 18);

-- END PLANET LIST

-- BEGIN MISSION LIST

INSERT INTO mission (id, end_date, mission_status, name, start_date, planet_id, ship_id) VALUES
(1, '2358-01-15', 'EM_ANDAMENTO', 'Missão Alpha', '2357-12-30', 7, 14),
(2, '2360-07-20', 'CONCLUIDO', 'Operação Ômega', '2359-05-10', 23, 6),
(3, '2358-11-05', 'EM_ANDAMENTO', 'Exploração em Epsilon Prime', '2358-10-20', 9, 2),
(4, '2359-09-18', 'EM_ANDAMENTO', 'Resgate em Delta V', '2359-09-02', 13, 19),
(5, '2360-02-10', 'EM_ANDAMENTO', 'Pesquisa em Beta IX', '2359-11-25', 5, 8),
(6, '2359-04-30', 'EM_ANDAMENTO', 'Missão Gama', '2359-04-15', 11, 3),
(7, '2359-08-25', 'CONCLUIDO', 'Exploração em Zeta III', '2359-08-10', 17, 10),
(8, '2359-03-05', 'ARQUIVADO', 'Resgate em Eta Prime', '2359-02-18', 16, 12),
(9, '2359-12-20', 'NAO_INICIADO', 'Pesquisa em Theta IV', '2359-12-05', 4, 5),
(10, '2360-09-15', 'NAO_INICIADO', 'Missão Delta', '2360-08-30', 20, 18),
(11, '2358-07-05', 'EM_ANDAMENTO', 'Exploração em Alpha Prime', '2358-06-20', 1, 15),
(12, '2359-05-20', 'CONCLUIDO', 'Resgate em Beta V', '2359-05-05', 6, 9),
(13, '2360-01-05', 'EM_ANDAMENTO', 'Pesquisa em Gamma IX', '2359-12-20', 12, 17),
(14, '2359-10-18', 'EM_ANDAMENTO', 'Missão Epsilon', '2359-10-03', 8, 13),
(15, '2360-03-10', 'EM_ANDAMENTO', 'Exploração em Delta Prime', '2360-02-24', 19, 20),
(16, '2359-05-30', 'CONCLUIDO', 'Resgate em Zeta V', '2359-05-15', 2, 11),
(17, '2360-08-25', 'EM_ANDAMENTO', 'Pesquisa em Eta IX', '2360-08-10', 3, 16),
(18, '2359-09-05', 'ARQUIVADO', 'Missão Theta', '2359-08-21', 14, 4),
(19, '2360-01-20', 'NAO_INICIADO', 'Exploração em Alpha Prime II', '2360-01-05', 18, 7),
(20, '2360-10-15', 'NAO_INICIADO', 'Resgate em Beta IX', '2360-09-30', 10, 1),
(21, '2358-12-05', 'EM_ANDAMENTO', 'Pesquisa em Gamma Prime', '2358-11-20', 15, 9),
(22, '2359-07-20', 'CONCLUIDO', 'Missão Epsilon II', '2359-07-05', 4, 13),
(23, '2360-03-05', 'EM_ANDAMENTO', 'Exploração em Delta V', '2360-02-18', 9, 4),
(24, '2359-11-18', 'EM_ANDAMENTO', 'Resgate em Zeta IX', '2359-11-03', 7, 20),
(25, '2360-04-10', 'EM_ANDAMENTO', 'Pesquisa em Eta Prime', '2360-03-25', 5, 12),
(26, '2360-01-30', 'CONCLUIDO', 'Missão Theta III', '2360-01-15', 14, 3),
(27, '2360-09-25', 'EM_ANDAMENTO', 'Exploração em Alpha Prime III', '2360-09-10', 17, 18),
(28, '2360-06-05', 'ARQUIVADO', 'Resgate em Beta V', '2360-05-21', 6, 14),
(29, '2360-02-20', 'NAO_INICIADO', 'Pesquisa em Gamma IX II', '2360-02-05', 2, 17),
(30, '2361-03-15', 'NAO_INICIADO', 'Missão Epsilon III', '2361-02-28', 15, 5),
(31, '2359-01-05', 'EM_ANDAMENTO', 'Exploração em Delta Prime II', '2358-12-21', 20, 8),
(32, '2359-09-20', 'CONCLUIDO', 'Resgate em Zeta V II', '2359-09-05', 1, 15),
(33, '2360-05-05', 'EM_ANDAMENTO', 'Pesquisa em Eta IX II', '2360-04-20', 4, 19),
(34, '2359-06-18', 'EM_ANDAMENTO', 'Missão Theta IV', '2359-06-03', 19, 6),
(35, '2360-07-10', 'CONCLUIDO', 'Exploração em Alpha Prime IV', '2360-06-25', 11, 3),
(36, '2360-04-30', 'EM_ANDAMENTO', 'Resgate em Beta IX II', '2360-04-15', 18, 13),
(37, '2360-11-25', 'EM_ANDAMENTO', 'Pesquisa em Gamma Prime II', '2360-11-10', 3, 17),
(38, '2361-04-05', 'CONCLUIDO', 'Missão Epsilon IV', '2361-03-21', 6, 11),
(39, '2360-02-18', 'ARQUIVADO', 'Exploração em Delta V II', '2360-02-03', 16, 4),
(40, '2360-10-20', 'NAO_INICIADO', 'Resgate em Zeta IX II', '2360-10-05', 9, 20),
(41, '2361-05-20', 'EM_ANDAMENTO', 'Pesquisa em Eta Prime II', '2361-05-05', 8, 19),
(42, '2360-03-30', 'CONCLUIDO', 'Missão Theta V', '2360-03-15', 5, 16),
(43, '2360-12-25', 'EM_ANDAMENTO', 'Exploração em Alpha Prime V', '2360-12-10', 7, 9),
(44, '2361-06-05', 'ARQUIVADO', 'Resgate em Beta V II', '2361-05-21', 13, 1),
(45, '2360-04-20', 'NAO_INICIADO', 'Pesquisa em Gamma IX III', '2360-04-05', 10, 7),
(46, '2361-02-15', 'NAO_INICIADO', 'Missão Epsilon V', '2361-01-31', 11, 8),
(47, '2359-02-05', 'EM_ANDAMENTO', 'Exploração em Delta Prime III', '2359-01-21', 9, 20),
(48, '2359-10-20', 'CONCLUIDO', 'Resgate em Zeta V III', '2359-10-05', 7, 12),
(49, '2360-06-05', 'EM_ANDAMENTO', 'Pesquisa em Eta IX III', '2360-05-21', 14, 3),
(50, '2359-07-18', 'EM_ANDAMENTO', 'Missão Theta VI', '2359-07-03', 12, 10);

-- END MISSION LIST

-- BEGIN CREW MISSION LIST

INSERT INTO crew_mission (crew_id, mission_id) VALUES (62, 34);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (25, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (43, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (96, 41);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (76, 24);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (17, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (39, 21);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (81, 38);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (9, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (57, 30);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (31, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (87, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (52, 27);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (34, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (5, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (69, 36);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (45, 23);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (21, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (93, 48);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (64, 33);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (12, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (79, 41);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (41, 20);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (83, 42);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (26, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (8, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (54, 28);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (38, 19);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (85, 43);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (30, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (71, 37);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (48, 25);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (14, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (88, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (36, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (6, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (80, 41);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (42, 21);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (86, 44);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (27, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (7, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (55, 29);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (37, 19);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (89, 46);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (32, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (72, 37);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (49, 26);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (15, 8);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (90, 47);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (37, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (8, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (81, 40);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (43, 20);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (87, 44);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (28, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (10, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (56, 28);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (38, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (89, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (33, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (73, 36);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (50, 25);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (16, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (91, 47);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (36, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (9, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (82, 40);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (44, 19);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (88, 43);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (29, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (11, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (57, 27);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (39, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (90, 44);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (34, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (74, 36);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (51, 24);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (17, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (92, 46);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (38, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (10, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (83, 39);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (45, 19);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (85, 42);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (30, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (12, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (58, 30);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (40, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (91, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (35, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (75, 35);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (52, 23);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (18, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (93, 46);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (39, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (11, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (84, 39);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (46, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (86, 41);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (31, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (13, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (59, 29);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (41, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (92, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (36, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (76, 35);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (53, 22);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (19, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (94, 47);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (40, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (12, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (85, 38);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (47, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (87, 40);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (32, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (14, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (60, 29);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (42, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (93, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (37, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (77, 34);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (54, 21);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (20, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (95, 48);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (41, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (13, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (86, 38);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (48, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (88, 40);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (33, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (15, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (61, 28);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (43, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (94, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (38, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (78, 34);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (55, 20);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (21, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (96, 48);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (42, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (14, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (87, 37);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (49, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (89, 39);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (34, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (16, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (62, 28);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (44, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (95, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (39, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (79, 33);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (56, 19);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (22, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (97, 48);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (43, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (15, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (88, 37);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (50, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (90, 38);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (35, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (17, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (63, 27);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (45, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (96, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (40, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (80, 33);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (57, 19);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (23, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (98, 48);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (44, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (89, 37);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (51, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (18, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (64, 27);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (46, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (97, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (41, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (81, 32);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (58, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (24, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (99, 47);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (45, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (98, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (42, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (82, 32);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (59, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (25, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (100, 47);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (46, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (99, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (83, 31);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (60, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (26, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (47, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (10, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (84, 31);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (61, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (27, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (48, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (11, 47);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (85, 30);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (62, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (28, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (49, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (12, 47);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (86, 30);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (63, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (29, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (50, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (47, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (87, 29);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (64, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (30, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (51, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (48, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (88, 29);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (65, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (31, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (52, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (15, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (49, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (89, 28);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (66, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (32, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (53, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (16, 45);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (50, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (90, 28);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (67, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (33, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (54, 9);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (17, 44);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (51, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (91, 27);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (68, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (34, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (55, 9);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (52, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (92, 27);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (69, 13);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (35, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (56, 9);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (53, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (93, 26);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (70, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (36, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (57, 8);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (10, 43);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (54, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (94, 26);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (71, 12);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (37, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (58, 8);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (11, 42);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (55, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (95, 25);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (72, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (38, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (59, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (12, 42);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (56, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (96, 25);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (73, 11);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (39, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (60, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (57, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (97, 24);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (74, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (40, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (61, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (58, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (98, 24);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (75, 10);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (41, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (62, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (59, 9);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (99, 23);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (76, 9);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (42, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (63, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (60, 9);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (100, 23);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (77, 9);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (43, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (64, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (61, 8);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (78, 8);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (44, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (65, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (62, 8);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (79, 8);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (45, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (66, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (63, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (80, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (46, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (67, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (64, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (14, 21);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (81, 7);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (47, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (68, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (65, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (15, 20);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (82, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (48, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (69, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (66, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (16, 20);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (83, 6);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (49, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (70, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (13, 36);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (67, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (17, 19);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (84, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (50, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (71, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (68, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (85, 5);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (51, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (72, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (15, 35);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (69, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (19, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (86, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (52, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (73, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (16, 35);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (70, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (10, 18);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (87, 4);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (53, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (74, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (17, 34);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (71, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (11, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (88, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (54, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (75, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (18, 34);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (72, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (12, 17);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (89, 3);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (55, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (76, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (19, 33);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (73, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (13, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (90, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (56, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (77, 2);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (10, 33);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (74, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (14, 16);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (91, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (57, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (78, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (11, 32);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (75, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (15, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (92, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (58, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (79, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (12, 32);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (76, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (16, 15);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (93, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (59, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (80, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (13, 31);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (77, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (17, 14);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (94, 1);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (60, 50);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (20, 50);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (45, 50);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (85, 50);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (25, 50);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (10, 50);
INSERT INTO crew_mission (crew_id, mission_id) VALUES (88, 50);

-- END CREW MISSION LIST

-- START RESOURCE TYPE LIST

INSERT INTO resource_type (id, name) VALUES (1, 'Energy');
INSERT INTO resource_type (id, name) VALUES (2, 'Power');
INSERT INTO resource_type (id, name) VALUES (3, 'Material');
INSERT INTO resource_type (id, name) VALUES (4, 'Fuel');
INSERT INTO resource_type (id, name) VALUES (5, 'Component');
INSERT INTO resource_type (id, name) VALUES (6, 'Data');
INSERT INTO resource_type (id, name) VALUES (7, 'Tool');
INSERT INTO resource_type (id, name) VALUES (8, 'Ammunition');
INSERT INTO resource_type (id, name) VALUES (9, 'Device');
INSERT INTO resource_type (id, name) VALUES (10, 'Consumable');
INSERT INTO resource_type (id, name) VALUES (11, 'Structure');
INSERT INTO resource_type (id, name) VALUES (12, 'Weapon');
INSERT INTO resource_type (id, name) VALUES (13, 'Sensor');
INSERT INTO resource_type (id, name) VALUES (14, 'Generator');
INSERT INTO resource_type (id, name) VALUES (15, 'Communication');
INSERT INTO resource_type (id, name) VALUES (16, 'Medical');
INSERT INTO resource_type (id, name) VALUES (17, 'Robot');
INSERT INTO resource_type (id, name) VALUES (18, 'Propulsion');
INSERT INTO resource_type (id, name) VALUES (19, 'Navigation');
INSERT INTO resource_type (id, name) VALUES (20, 'Food');


-- END RESOURCE TYPE LIST

-- BEGIN RESOURCE LIST

INSERT INTO resource (id, name, quantity, unit_cost, type_id) VALUES
    (1, 'Dilithium Crystals', 100, 50.00, 1),
    (2, 'Plasma Coils', 50, 25.00, 2),
    (3, 'Tritanium Alloy', 200, 10.00, 3),
    (4, 'Antimatter Injectors', 75, 100.00, 4),
    (5, 'Replicator Parts', 300, 5.00, 5),
    (6, 'Isolinear Chips', 150, 20.00, 6),
    (7, 'Tricorders', 50, 75.00, 7),
    (8, 'Phaser Energy Cells', 2000, 2.00, 8),
    (9, 'Shield Emitters', 100, 30.00, 9),
    (10, 'Holodeck Components', 80, 40.00, 10),
    (11, 'Plasma Manifolds', 120, 15.00, 11),
    (12, 'Quantum Torpedoes', 25, 500.00, 12),
    (13, 'Sensor Arrays', 150, 25.00, 13),
    (14, 'Fusion Reactors', 50, 200.00, 14),
    (15, 'Communicators', 100, 50.00, 15),
    (16, 'Medical Supplies', 500, 5.00, 16),
    (17, 'Exocomps', 10, 1000.00, 17),
    (18, 'Warp Coils', 30, 500.00, 18),
    (19, 'Navigational Deflectors', 75, 150.00, 19),
    (20, 'Food Rations', 1000, 1.00, 20),
    (21, 'Universal Translators', 50, 100.00, 1),
    (22, 'EPS Conduits', 200, 8.00, 2),
    (23, 'Tractor Beam Emitters', 80, 50.00, 3),
    (24, 'Power Couplings', 150, 20.00, 4),
    (25, 'Environmental Suits', 50, 75.00, 5),
    (26, 'Data PADDs', 200, 10.00, 6),
    (27, 'Impulse Engines', 20, 1000.00, 7),
    (28, 'Graviton Generators', 40, 500.00, 8),
    (29, 'Bioneural Gel Packs', 100, 200.00, 9),
    (30, 'Plasma Injectors', 75, 150.00, 10),
    (31, 'Holoemitters', 30, 500.00, 11),
    (32, 'Life Support Systems', 50, 250.00, 12),
    (33, 'Lithium Crystals', 100, 50.00, 13),
    (34, 'Phaser Arrays', 80, 75.00, 14),
    (35, 'Quantum Slipstream Cores', 5, 5000.00, 15),
    (36, 'Subspace Communicators', 50, 200.00, 16),
    (37, 'EPS Regulators', 100, 100.00, 17),
    (38, 'Tricobalt Devices', 10, 10000.00, 18),
    (39, 'Plasma Manifolds', 120, 15.00, 19),
    (40, 'Subspace Amplifiers', 50, 500.00, 20),
    (41, 'Isomagnetic Disintegrators', 25, 1000.00, 1),
    (42, 'Holodeck Programs', 200, 10.00, 2),
    (43, 'Energy Weapons', 150, 50.00, 3),
    (44, 'Self-Sealing Stem Bolts', 500, 2.00, 4),
    (45, 'Quantum Slipstream Drives', 3, 100000.00, 5),
    (46, 'Warp Field Coils', 50, 500.00, 6),
    (47, 'Replicator Patterns', 100, 20.00, 7),
    (48, 'Sonic Showers', 30, 1000.00, 8),
    (49, 'EPS Conduits', 200, 8.00, 9),
    (50, 'Tractor Beam Emitters', 80, 50.00, 10),
    (51, 'Emergency Medical Holograms', 10, 5000.00, 11),
    (52, 'Phaser Rifles', 50, 100.00, 12),
    (53, 'Plasma Flow Regulators', 100, 75.00, 13),
    (54, 'Temporal Displacement Devices', 5, 10000.00, 14),
    (55, 'Bio-neural Circuitry', 200, 25.00, 15),
    (56, 'Anti-gravity Boots', 30, 500.00, 16),
    (57, 'Astro-navigation Charts', 100, 10.00, 17),
    (58, 'Subspace Modulators', 50, 200.00, 18),
    (59, 'Warp Plasma Conduits', 80, 150.00, 19),
    (60, 'Holo-emitters', 20, 1000.00, 20),
    (61, 'Nanoprobes', 1000, 5.00, 1),
    (62, 'Trilithium Resin', 25, 1000.00, 2),
    (63, 'Plasma Ducts', 150, 30.00, 3),
    (64, 'Replicator Templates', 200, 10.00, 4),
    (65, 'Inertial Dampeners', 50, 75.00, 5),
    (66, 'Hyposprays', 300, 5.00, 6),
    (67, 'Isomorphic Probes', 10, 1000.00, 7),
    (68, 'Plasma Injectors', 75, 150.00, 8),
    (69, 'EPS Regulators', 100, 100.00, 9),
    (70, 'Tricobalt Torpedoes', 20, 10000.00, 10),
    (71, 'Anti-proton Beams', 40, 500.00, 11),
    (72, 'Gravitic Modulators', 100, 200.00, 12),
    (73, 'Temporal Shielding', 50, 250.00, 13),
    (74, 'Nanoforges', 30, 1000.00, 14),
    (75, 'Isokinetic Cannon Arrays', 80, 75.00, 15),
    (76, 'Chroniton Torpedoes', 5, 5000.00, 16),
    (77, 'Phaser Banks', 50, 200.00, 17),
    (78, 'Thoron Generators', 100, 100.00, 18),
    (79, 'Warp Field Stabilizers', 50, 500.00, 19),
    (80, 'Plasma Capacitors', 75, 150.00, 20),
    (81, 'EPS Regulators', 100, 100.00, 1),
    (82, 'Plasma Manifolds', 120, 15.00, 2),
    (83, 'Tricobalt Devices', 10, 10000.00, 3),
    (84, 'Plasma Injectors', 75, 150.00, 4),
    (85, 'EPS Conduits', 200, 8.00, 5),
    (86, 'Tractor Beam Emitters', 80, 50.00, 6),
    (87, 'Power Couplings', 150, 20.00, 7),
    (88, 'Environmental Suits', 50, 75.00, 8),
    (89, 'Data PADDs', 200, 10.00, 9),
    (90, 'Impulse Engines', 20, 1000.00, 10),
    (91, 'Graviton Generators', 40, 500.00, 11),
    (92, 'Bioneural Gel Packs', 100, 200.00, 12),
    (93, 'Plasma Manifolds', 120, 15.00, 13),
    (94, 'Subspace Amplifiers', 50, 500.00, 14),
    (95, 'EPS Regulators', 100, 100.00, 15),
    (96, 'Tricobalt Devices', 10, 10000.00, 16),
    (97, 'Plasma Manifolds', 120, 15.00, 17),
    (98, 'Subspace Amplifiers', 50, 500.00, 18),
    (99, 'EPS Regulators', 100, 100.00, 19),
    (100, 'Tricobalt Devices', 10, 10000.00, 20);

-- END RESOURCE LIST

-- START RESOURCE MISSION LIST

INSERT INTO resource_mission (resource_id, mission_id) VALUES (7, 10);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (25, 5);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (13, 20);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (46, 15);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (32, 25);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (19, 3);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (38, 7);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (12, 30);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (5, 12);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (41, 18);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (9, 1);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (28, 22);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (37, 40);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (16, 6);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (22, 13);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (47, 29);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (2, 8);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (33, 36);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (30, 11);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (48, 48);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (20, 17);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (39, 26);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (8, 32);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (50, 50);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (1, 4);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (43, 42);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (11, 9);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (36, 23);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (15, 35);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (3, 2);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (17, 14);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (42, 21);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (35, 41);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (18, 16);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (24, 33);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (26, 49);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (29, 38);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (45, 28);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (40, 19);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (4, 44);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (27, 31);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (6, 47);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (34, 34);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (21, 37);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (49, 46);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (23, 24);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (14, 27);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (44, 43);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (31, 39);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (10, 45);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (9, 33);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (27, 28);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (6, 7);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (42, 49);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (31, 41);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (46, 24);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (15, 2);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (2, 19);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (25, 50);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (7, 17);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (19, 48);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (22, 23);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (4, 8);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (30, 25);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (10, 36);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (33, 32);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (38, 43);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (16, 5);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (13, 40);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (8, 45);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (36, 14);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (12, 29);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (21, 21);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (48, 16);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (28, 13);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (11, 22);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (50, 42);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (32, 35);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (1, 11);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (17, 30);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (37, 26);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (3, 6);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (43, 1);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (26, 47);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (20, 37);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (18, 18);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (47, 9);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (35, 34);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (39, 38);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (24, 31);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (5, 3);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (23, 15);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (29, 20);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (45, 46);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (40, 12);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (34, 39);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (41, 44);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (49, 33);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (44, 4);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (3, 42);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (30, 21);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (17, 38);
INSERT INTO resource_mission (resource_id, mission_id) VALUES (19, 14);

-- END RESOURCE MISSION LIST

-- BEGIN SEQUENCE LIST

SELECT setval('department_id_seq', (SELECT MAX(id) FROM department));
SELECT setval('crew_id_seq', (SELECT MAX(id) FROM crew));
SELECT setval('planet_id_seq', (SELECT MAX(id) FROM planet));
SELECT setval('resource_id_seq', (SELECT MAX(id) FROM resource));
SELECT setval('resource_type_id_seq', (SELECT MAX(id) FROM resource_type));
SELECT setval('ship_id_seq', (SELECT MAX(id) FROM ship));
SELECT setval('mission_id_seq', (SELECT MAX(id) FROM mission));

-- BEGIN SEQUENCE LIST

-- BEGIN UPDATE CREW LIST

UPDATE crew
SET active_status = TRUE
WHERE id IN (SELECT crew_id FROM crew_mission);

UPDATE crew
SET active_status = FALSE
WHERE id NOT IN (SELECT crew_id FROM crew_mission);

-- BEGIN UPDATE CREW LIST



