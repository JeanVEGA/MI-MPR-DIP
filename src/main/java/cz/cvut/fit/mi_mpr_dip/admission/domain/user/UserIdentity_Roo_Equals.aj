// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserIdentity;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect UserIdentity_Roo_Equals {
    
    public boolean UserIdentity.equals(Object obj) {
        if (!(obj instanceof UserIdentity)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        UserIdentity rhs = (UserIdentity) obj;
        return new EqualsBuilder().append(authentication, rhs.authentication).append(username, rhs.username).isEquals();
    }
    
    public int UserIdentity.hashCode() {
        return new HashCodeBuilder().append(authentication).append(username).toHashCode();
    }
    
}
