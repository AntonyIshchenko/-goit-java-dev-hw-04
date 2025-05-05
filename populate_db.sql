-- Clear Tables
DELETE FROM project_worker;
DELETE FROM project;
DELETE FROM worker;
DELETE FROM client;

INSERT INTO client (name) VALUES
    ('Ukr National Bank'),
    ('EcoGreen Solutions'),
    ('Tech Innovations Ltd'),
    ('Global Trade Partners'),
    ('Smart City Systems'),
    ('Health Care Pro');

INSERT INTO worker (name, birthday, level, salary) VALUES
    -- Trainee (300-600)
    ('Olga Petrenko', '2001-05-15', 'Trainee', 300),
    ('Andriy Koval', '2002-03-23', 'Trainee', 500),
    ('Maria Shevchenko', '2000-11-07', 'Trainee', 600),

    -- Junior (600-1400)
    ('Ivan Melnyk', '1999-07-12', 'Junior', 800),
    ('Kateryna Lysenko', '1998-09-25', 'Junior', 1000),
    ('Vasyl Tkachenko', '1997-04-18', 'Junior', 1200),
    ('Yulia Kravchuk', '1999-02-28', 'Junior', 1400),

    -- Middle (1500-3900)
    ('Oleksandr Bondarenko', '1995-12-10', 'Middle', 1800),
    ('Natalia Kovalenko', '1993-06-15', 'Middle', 2200),
    ('Dmytro Shevchuk', '1991-08-22', 'Middle', 2500),
    ('Iryna Moroz', '1992-11-30', 'Middle', 3000),
    ('Serhiy Zaytsev', '1990-01-17', 'Middle', 3500),
    ('Viktor Pavlenko', '1989-03-25', 'Middle', 3900),

    -- Senior (4000-7000)
    ('Tetiana Sydorenko', '1987-09-05', 'Senior', 4500),
    ('Roman Lysenko', '1985-12-12', 'Senior', 5200),
    ('Olena Kovalchuk', '1988-04-27', 'Senior', 6000),
    ('Maksym Ponomarenko', '1984-08-14', 'Senior', 7000),
    ('Anna Tkachuk', '1986-10-20', 'Senior', 7000),
    ('Petro Ivanchenko', '1983-05-09', 'Senior', 7000);

INSERT INTO project (name, client_id, start_date, end_date) VALUES
    ('Mobile Banking App', 1, '2022-01-15', '2023-01-15'),           -- 12 month
    ('Online Payment System', 1, '2023-02-01', '2024-02-01'),        -- 12 month
    ('Banking Security Solution', 1, '2022-05-10', '2025-05-10'),    -- 36 month

    ('Eco Monitoring Platform', 2, '2021-06-20', '2023-06-20'),      -- 24 month
    ('Renewable Energy Tracker', 2, '2023-04-15', '2025-04-15'),     -- 24 month
    ('AI Customer Service', 2, '2022-09-01', '2023-09-01'),          -- 12 month

    ('Blockchain Integration', 3, '2023-11-15', '2024-05-15'),       -- 6 month

    ('International Trade System', 4, '2022-03-10', '2023-09-10'),   -- 18 month

    ('Smart Traffic Management', 5, '2021-12-05', '2024-12-05'),     -- 36 month
    ('Public Transport Optimizer', 5, '2023-08-12', '2026-08-12'),   -- 36 month

    ('Patient Management System', 6, '2022-07-01', '2023-01-01'),    -- 6 month
    ('Telemedicine Platform', 6, '2023-03-20', '2026-03-20');        -- 36 month


-- Project 1: Mobile Banking App
INSERT INTO project_worker (project_id, worker_id) VALUES
    (1, 7),   -- Junior
    (1, 9),   -- Middle
    (1, 14),  -- Senior
    (1, 5);   -- Junior

-- Project 2: Online Payment System
INSERT INTO project_worker (project_id, worker_id) VALUES
    (2, 10),  -- Middle
    (2, 15),  -- Senior
    (2, 8),   -- Middle
    (2, 4),   -- Junior
    (2, 1);   -- Trainee

-- Project 3: Banking Security Solution
INSERT INTO project_worker (project_id, worker_id) VALUES
    (3, 16),  -- Senior
    (3, 11),  -- Middle
    (3, 6);   -- Junior

-- Project 4: Eco Monitoring Platform
INSERT INTO project_worker (project_id, worker_id) VALUES
    (4, 17),  -- Senior
    (4, 12),  -- Middle
    (4, 5),   -- Junior
    (4, 2);   -- Trainee

-- Project 5: Renewable Energy Tracker
INSERT INTO project_worker (project_id, worker_id) VALUES
    (5, 18),  -- Senior
    (5, 13);  -- Middle

-- Project 6: AI Customer Service
INSERT INTO project_worker (project_id, worker_id) VALUES
    (6, 19),  -- Senior
    (6, 9),   -- Middle
    (6, 3);   -- Trainee

-- Project 7: Blockchain Integration
INSERT INTO project_worker (project_id, worker_id) VALUES
    (7, 17),  -- Senior
    (7, 10),  -- Middle
    (7, 7),   -- Junior
    (7, 1);   -- Trainee

-- Project 8: International Trade System
INSERT INTO project_worker (project_id, worker_id) VALUES
    (8, 16),  -- Senior
    (8, 11);  -- Middle

-- Project 9: Smart Traffic Management
INSERT INTO project_worker (project_id, worker_id) VALUES
    (9, 15),  -- Senior
    (9, 10),  -- Middle
    (9, 6),   -- Junior
    (9, 2);   -- Trainee

-- Project 10: Public Transport Optimizer
INSERT INTO project_worker (project_id, worker_id) VALUES
    (10, 18), -- Senior
    (10, 12), -- Middle
    (10, 4);  -- Junior

-- Project 11: Patient Management System
INSERT INTO project_worker (project_id, worker_id) VALUES
    (11, 19), -- Senior
    (11, 13), -- Middle
    (11, 8),  -- Middle
    (11, 5),  -- Junior
    (11, 3);  -- Trainee

-- Project 12: Telemedicine Platform
INSERT INTO project_worker (project_id, worker_id) VALUES
    (12, 14), -- Senior
    (12, 9),  -- Middle
    (12, 7);  -- Junior