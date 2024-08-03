package ru.iu3.rpo.dbsample.model;

import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(schema = "dbsample", name = "permissions")
public class PermissionEntity extends AuditableEntity {

    @Id
    @Column(name = "permission_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "permission_name", nullable = false)
    private String name;

    @Column(name = "permission_description", nullable = false)
    private String description;

    @Column(name = "active")
    private Boolean active;

}