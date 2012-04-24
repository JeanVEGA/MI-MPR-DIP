// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper;

import cz.cvut.fit.mi_mpr_dip.admission.dao.UserIdentityDao;
import cz.cvut.fit.mi_mpr_dip.admission.dao.UserSessionDao;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.DefaultUserIdentityEndpointHelper;
import cz.cvut.fit.mi_mpr_dip.admission.service.user.UserIdentityService;
import cz.cvut.fit.mi_mpr_dip.admission.validation.BeanValidator;
import cz.cvut.fit.mi_mpr_dip.admission.validation.PrincipalValidator;
import org.springframework.security.core.context.SecurityContextHolderStrategy;

privileged aspect DefaultUserIdentityEndpointHelper_Roo_JavaBean {
    
    public SecurityContextHolderStrategy DefaultUserIdentityEndpointHelper.getSecurityContextHolderStrategy() {
        return this.securityContextHolderStrategy;
    }
    
    public UserIdentityService DefaultUserIdentityEndpointHelper.getUserIdentityService() {
        return this.userIdentityService;
    }
    
    public void DefaultUserIdentityEndpointHelper.setUserIdentityService(UserIdentityService userIdentityService) {
        this.userIdentityService = userIdentityService;
    }
    
    public UserIdentityDao DefaultUserIdentityEndpointHelper.getUserIdentityDao() {
        return this.userIdentityDao;
    }
    
    public void DefaultUserIdentityEndpointHelper.setUserIdentityDao(UserIdentityDao userIdentityDao) {
        this.userIdentityDao = userIdentityDao;
    }
    
    public UserSessionDao DefaultUserIdentityEndpointHelper.getUserSessionDao() {
        return this.userSessionDao;
    }
    
    public void DefaultUserIdentityEndpointHelper.setUserSessionDao(UserSessionDao userSessionDao) {
        this.userSessionDao = userSessionDao;
    }
    
    public BeanValidator DefaultUserIdentityEndpointHelper.getBeanValidator() {
        return this.beanValidator;
    }
    
    public void DefaultUserIdentityEndpointHelper.setBeanValidator(BeanValidator beanValidator) {
        this.beanValidator = beanValidator;
    }
    
    public PrincipalValidator DefaultUserIdentityEndpointHelper.getPrincipalValidator() {
        return this.principalValidator;
    }
    
    public void DefaultUserIdentityEndpointHelper.setPrincipalValidator(PrincipalValidator principalValidator) {
        this.principalValidator = principalValidator;
    }
    
}
