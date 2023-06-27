
-- Criação de role como usuário
CREATE ROLE db_app WITH
LOGIN --considera como um usuário
PASSWORD --define senha
'1245';

SELECT * FROM pg_user;

-- Permitição para usuário acessar o banco
GRANT CONNECT ON DATABASE st TO db_app;

-- Permissão para usuário ler as tabelas
GRANT SELECT ON
    crew,
    crew_backup,
    crew_mission,
    department,
    mission,
    planet,
    resource,
    resource_mission,
    resource_type,
    ship TO db_app;

-- Permissão para usuário inserir e ler dados na view
GRANT SELECT, INSERT ON MissionReport TO db_app;

INSERT INTO MissionReport (mission_name, start_date, end_date, mission_status, ship_name, planet_name, captain_name)
VALUES ('Missão de teste', '2023-06-14', '2023-06-20', 'EM_ANDAMENTO', 'USS Defiant', 'Nimbus III', 'Matthew Harris');

-- REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM db_app;
-- REVOKE CONNECT ON DATABASE st FROM db_app;
-- DROP ROLE db_app;