// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserIdentity;
import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserPermission;
import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserRole;
import java.util.List;
import java.util.Set;

privileged aspect UserRole_Roo_JavaBean {
    
    public int UserRole.getVersion() {
        return this.version;
    }
    
    public void UserRole.setVersion(int version) {
        this.version = version;
    }
    
    public Long UserRole.getUserRoleId() {
        return this.userRoleId;
    }
    
    public void UserRole.setUserRoleId(Long userRoleId) {
        this.userRoleId = userRoleId;
    }
    
    public String UserRole.getName() {
        return this.name;
    }
    
    public void UserRole.setName(String name) {
        this.name = name;
    }
    
    public List<UserIdentity> UserRole.getIdentities() {
        return this.identities;
    }
    
    public void UserRole.setIdentities(List<UserIdentity> identities) {
        this.identities = identities;
    }
    
    public Set<UserPermission> UserRole.getPermissions() {
        return this.permissions;
    }
    
    public void UserRole.setPermissions(Set<UserPermission> permissions) {
        this.permissions = permissions;
    }
    
}
