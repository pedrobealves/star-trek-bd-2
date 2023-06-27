-- BEGIN FUNCTION LIST

CREATE OR REPLACE FUNCTION BackupDeletedCrew()
    RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO crew_backup (id,
                             active_status,
                             date_birth,
                             date_joined,
                             first_name,
                             last_name,
                             rank,
                             species,
                             department_id,
                             deleted_by,
                             deletion_date) VALUES (OLD.id,
                                                    OLD.active_status,
                                                    OLD.date_birth,
                                                    OLD.date_joined,
                                                    OLD.first_name,
                                                    OLD.last_name,
                                                    OLD.rank,
                                                    OLD.species,
                                                    OLD.department_id,
                                                    CURRENT_USER,
                                                    CURRENT_TIMESTAMP);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION InsertMissionReport()
RETURNS TRIGGER AS $$
DECLARE
    ship_id BIGINT;
    planet_id BIGINT;
    v_captain_id BIGINT;
BEGIN
    -- Verifica se o registro do capitão já existe, caso contrário, insere um novo
    SELECT id INTO v_captain_id FROM crew WHERE CONCAT(first_name, ' ', last_name) = NEW.captain_name;
    IF v_captain_id IS NULL THEN
        -- Insere detalhes do capitão, como primeiro nome, último nome.
        INSERT INTO crew (id, first_name, last_name, active_status, rank, department_id) VALUES (DEFAULT, split_part(NEW.captain_name, ' ', 1), split_part(NEW.captain_name, ' ', 2), TRUE, 1,1) RETURNING id INTO v_captain_id;
    END IF;

    -- Verifica se o registro da nave já existe, caso contrário, insere um novo
    SELECT id INTO ship_id FROM ship WHERE name = NEW.ship_name;
    IF ship_id IS NULL THEN
        INSERT INTO ship (id,name, captain_id, level, max_crew_size) VALUES (DEFAULT, NEW.ship_name, v_captain_id, 1, 1) RETURNING id INTO ship_id;
    ELSE
        -- Atualiza o capitão da nave
        UPDATE ship SET captain_id = v_captain_id WHERE id = ship_id;
    END IF;

    -- Verifica se o registro do planeta já existe, caso contrário, insere um novo
    SELECT id INTO planet_id FROM planet WHERE name = NEW.planet_name;
    IF planet_id IS NULL THEN
        INSERT INTO planet (id, diameter, name) VALUES (DEFAULT,0, NEW.planet_name) RETURNING id INTO planet_id;
    END IF;

    -- Insere o registro da missão
    INSERT INTO mission (id,name, start_date, end_date, mission_status, ship_id, planet_id)
    VALUES (DEFAULT, NEW.mission_name, NEW.start_date, NEW.end_date, NEW.mission_status, ship_id, planet_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE OR REPLACE FUNCTION DeleteCrewMission()
    RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (
    SELECT *
    FROM crew_mission
    WHERE crew_id = OLD.crew_id
) THEN
    -- Definir estado como false para tripulante se não possui missões
    UPDATE crew
    SET active_status = FALSE
    WHERE id=OLD.crew_id;
END IF;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION InsertCrewMission()
    RETURNS TRIGGER AS $$
BEGIN
    UPDATE crew
    SET active_status = TRUE
    WHERE id=NEW.crew_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- END FUNCTION LIST