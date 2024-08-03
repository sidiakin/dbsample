package ru.iu3.rpo.dbsample.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ru.iu3.rpo.dbsample.model.GroupEntity;

@Repository
public interface GroupRepository extends JpaRepository<GroupEntity, Long> {

}
