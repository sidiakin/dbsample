package ru.iu3.rpo.dbsample.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ru.iu3.rpo.dbsample.model.GroupEntity;
import ru.iu3.rpo.dbsample.model.PermissionEntity;
import ru.iu3.rpo.dbsample.model.UserEntity;
import ru.iu3.rpo.dbsample.repository.GroupRepository;
import ru.iu3.rpo.dbsample.repository.PermissionRepository;
import ru.iu3.rpo.dbsample.repository.UserRepository;

@RestController
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    GroupRepository groupRepository;

    @Autowired
    PermissionRepository permissionRepository;

    @GetMapping("/users")
    public Object Users() {
        List<UserEntity> users =  userRepository.findAll();
        return users;
    }

    @GetMapping("/setname")
    public Object SetName(@RequestParam("email") String email, 
                                            @RequestParam("name") String name) {
        UserEntity user = userRepository.findByEmail(email);
        if (user != null) {
            user.setFirstName(name);
            userRepository.save(user);
        }
        return user;
    }

    @GetMapping("/groups")
    public Object Groups() {
        List<GroupEntity> groups =  groupRepository.findAll();
        return groups;
    }

    @GetMapping("/permissions")
    public Object Permissions() {
        List<PermissionEntity> permissions =  permissionRepository.findAll();
        return permissions;
    }
    
}
