// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserPermission;
import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserRole;
import java.util.Set;

privileged aspect UserPermission_Roo_JavaBean {
    
    public int UserPermission.getVersion() {
        return this.version;
    }
    
    public void UserPermission.setVersion(int version) {
        this.version = version;
    }
    
    public Long UserPermission.getUserPermissionId() {
        return this.userPermissionId;
    }
    
    public void UserPermission.setUserPermissionId(Long userPermissionId) {
        this.userPermissionId = userPermissionId;
    }
    
    public String UserPermission.getName() {
        return this.name;
    }
    
    public void UserPermission.setName(String name) {
        this.name = name;
    }
    
    public Set<UserRole> UserPermission.getRoles() {
        return this.roles;
    }
    
    public void UserPermission.setRoles(Set<UserRole> roles) {
        this.roles = roles;
    }
    
}
