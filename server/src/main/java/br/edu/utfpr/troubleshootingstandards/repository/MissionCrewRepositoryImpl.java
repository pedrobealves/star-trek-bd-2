package br.edu.utfpr.troubleshootingstandards.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.math.BigInteger;

@Repository
@Transactional
public class MissionCrewRepositoryImpl implements MissionCrewRepository{

    @Autowired
    private EntityManagerFactory entityManagerFactory;

   public void executeCrewMissionOperations(Long v_crew_id, Long v_mission_id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        try {
            entityManager.getTransaction().begin();

            BigInteger newCrewId = (BigInteger) entityManager.createNativeQuery("SELECT crew_id FROM InactiveCrewByDepartment " +
                            "WHERE department_name = (SELECT department.name " +
                            "FROM Crew crew " +
                            "INNER JOIN Department department ON crew.department_id = department.id " +
                            "WHERE crew.id = :crewId)")
                    .setParameter("crewId", v_crew_id)
                    .getSingleResult();

            entityManager.createNativeQuery("DELETE FROM crew_mission " +
                            "WHERE crew_id = :crewId AND mission_id = :missionId")
                    .setParameter("crewId", v_crew_id)
                    .setParameter("missionId", v_mission_id)
                    .executeUpdate();

            entityManager.createNativeQuery("INSERT INTO crew_mission (crew_id, mission_id) " +
                            "VALUES (:newCrewId, :missionId)")
                    .setParameter("newCrewId", newCrewId)
                    .setParameter("missionId", v_mission_id)
                    .executeUpdate();

            entityManager.flush();
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            entityManager.getTransaction().rollback();
            throw e;
        } finally {
            entityManager.close();
        }
    }
}
