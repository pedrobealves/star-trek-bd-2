CREATE TABLE department
(
    id   BIGSERIAL    NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE crew
(
    id            BIGSERIAL    NOT NULL,
    active_status BOOLEAN      NOT NULL,
    date_birth    DATE,
    date_joined   DATE,
    first_name    VARCHAR(255) NOT NULL,
    last_name     VARCHAR(255) NOT NULL,
    rank          INTEGER      NOT NULL,
    species       VARCHAR(255),
    department_id BIGINT       NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT crew_departament_id_fkey
        FOREIGN KEY (department_id) REFERENCES department ON DELETE CASCADE,
    CONSTRAINT crew_rank_check
        CHECK (rank >= 1)
);

CREATE TABLE planet
(
    id             BIGSERIAL    NOT NULL,
    diameter       INTEGER      NOT NULL,
    name           VARCHAR(255) NOT NULL,
    orbital_period DOUBLE PRECISION,
    planet_type    VARCHAR(255),
    star_system    VARCHAR(255),
    surface_temp   INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE resource_type
(
    id   BIGSERIAL    NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE resource
(
    id        BIGSERIAL      NOT NULL,
    name      VARCHAR(255)   NOT NULL,
    quantity  INTEGER        NOT NULL,
    unit_cost NUMERIC(10, 2) NOT NULL,
    type_id   BIGINT         NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT resource_type_id_fkey
        FOREIGN KEY (type_id) REFERENCES resource_type
);

CREATE TABLE ship
(
    id            BIGSERIAL    NOT NULL,
    level         INTEGER      NOT NULL,
    max_crew_size INTEGER      NOT NULL,
    name          VARCHAR(255) NOT NULL,
    captain_id    BIGINT       NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT ship_capitan_id_fkey
        FOREIGN KEY (captain_id) REFERENCES crew ON DELETE CASCADE
);

CREATE TABLE mission
(
    id             BIGSERIAL    NOT NULL,
    end_date       DATE,
    mission_status VARCHAR(255) NOT NULL,
    name           VARCHAR(255),
    start_date     DATE,
    planet_id      BIGINT,
    ship_id        BIGINT       NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT mission_planet_id_fkey
        FOREIGN KEY (planet_id) REFERENCES planet ON DELETE CASCADE,
    CONSTRAINT mission_ship_id_fkey
        FOREIGN KEY (ship_id) REFERENCES ship ON DELETE CASCADE
);

CREATE TABLE crew_mission
(
    crew_id    BIGINT NOT NULL,
    mission_id BIGINT NOT NULL,
    PRIMARY KEY (crew_id, mission_id),
    CONSTRAINT crew_mission_mission_id_fkey
        FOREIGN KEY (mission_id) REFERENCES mission ON DELETE CASCADE,
    CONSTRAINT crew_mission_crew_id_fkey
        FOREIGN KEY (crew_id) REFERENCES crew ON DELETE CASCADE
);

CREATE TABLE resource_mission
(
    resource_id BIGINT NOT NULL,
    mission_id  BIGINT NOT NULL,
    PRIMARY KEY (resource_id, mission_id),
    CONSTRAINT resource_mission_mission_id_fkey
        FOREIGN KEY (mission_id) REFERENCES mission ON DELETE CASCADE,
    CONSTRAINT resource_mission_resource_id_fkey
        FOREIGN KEY (resource_id) REFERENCES resource ON DELETE CASCADE
);

-- BEGIN TABLE BACKUP LIST

CREATE TABLE crew_backup
(
    id            BIGSERIAL       NOT NULL,
    active_status BOOLEAN      NOT NULL,
    date_birth    DATE,
    date_joined   DATE,
    first_name    VARCHAR(255) NOT NULL,
    last_name     VARCHAR(255) NOT NULL,
    rank          INTEGER      NOT NULL,
    species       VARCHAR(255),
    department_id BIGINT       NOT NULL,
    deleted_by    VARCHAR(255) NOT NULL,
    deletion_date TIMESTAMP    NOT NULL,
    PRIMARY KEY (id,deletion_date)
);

-- BEGIN TABLE BACKUP LIST

-- BEGIN INDEX LIST

CREATE INDEX crewRank_index ON crew(rank);
CREATE INDEX missionStartDate_index ON mission(start_date);
CREATE INDEX shipLevel_index ON ship(level);
CREATE INDEX planetSurfaceTemp_index ON planet(surface_temp);
CREATE INDEX resourceCost_index ON resource(unit_cost);

-- END INDEX LIST

-- BEGIN VIEWS LIST

CREATE OR REPLACE VIEW MissionReport AS
SELECT m.id AS mission_id, m.name AS mission_name, m.start_date, m.end_date,
       m.mission_status, s.name AS ship_name, p.name AS planet_name, CONCAT(c.first_name, ' ', c.last_name) AS captain_name
FROM mission m
INNER JOIN ship s ON m.ship_id = s.id
INNER JOIN planet p ON m.planet_id = p.id
INNER JOIN crew c ON c.id = s.captain_id
ORDER BY m.id;

CREATE OR REPLACE VIEW UnusedResources AS
SELECT r.name
FROM resource r
EXCEPT
SELECT r.name
FROM resource r
JOIN resource_mission rm ON r.id = rm.resource_id;

CREATE OR REPLACE VIEW PlanetResourceCostByType AS
SELECT p.name AS planet_name, rt.name AS resource_type, SUM(r.quantity * r.unit_cost) AS total_cost
FROM planet p
JOIN mission m ON p.id = m.planet_id
JOIN resource_mission rm ON m.id = rm.mission_id
JOIN resource r ON rm.resource_id = r.id
JOIN resource_type rt ON r.id = rt.id
GROUP BY p.name, rt.name;

CREATE OR REPLACE VIEW ActiveCrewByDepartment AS
SELECT d.name AS department_name, COUNT(*) AS active_crew_count
FROM department d
JOIN crew c ON d.id = c.department_id
WHERE c.active_status = true
GROUP BY d.id, d.name;

CREATE OR REPLACE VIEW InactiveCrewByDepartment AS
SELECT DISTINCT ON (department.name)
       department.name AS department_name,
       crew.id AS crew_id,
       crew.first_name,
       crew.last_name,
       crew.rank,
       crew.date_joined
FROM department
INNER JOIN crew ON department.id = crew.department_id
WHERE crew.active_status = false
ORDER BY department.name, crew.rank DESC, crew.date_joined ASC;

-- END VIEWS LIST

DELETE FROM crew WHERE id=2;





