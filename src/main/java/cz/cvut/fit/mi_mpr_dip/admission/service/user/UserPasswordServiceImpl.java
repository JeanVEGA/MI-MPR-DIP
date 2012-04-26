package cz.cvut.fit.mi_mpr_dip.admission.service.user;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.stereotype.Service;

import cz.cvut.fit.mi_mpr_dip.admission.dao.AdmissionDao;
import cz.cvut.fit.mi_mpr_dip.admission.dao.PersonDao;
import cz.cvut.fit.mi_mpr_dip.admission.domain.Admission;
import cz.cvut.fit.mi_mpr_dip.admission.domain.personal.Person;
import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserIdentity;
import cz.cvut.fit.mi_mpr_dip.admission.exception.util.BusinessExceptionUtil;

@Service
@RooJavaBean
public class UserPasswordServiceImpl implements UserPasswordService {

	@Autowired
	private AdmissionDao admissionDao;

	@Autowired
	private PasswordGenerator passwordGenerator;

	@Autowired
	private PersonDao personDao;

	@Autowired
	private BusinessExceptionUtil businessExceptionUtil;

	@Override
	public Set<UserIdentity> createRandomPassword(String email) {
		List<Person> people = getPersonDao().findByEmail(email);
		Set<UserIdentity> userIdentities = null;
		if (CollectionUtils.isNotEmpty(people)) {
			userIdentities = createRandomPassword(people);
		} else {
			getBusinessExceptionUtil().throwException(HttpServletResponse.SC_NOT_FOUND);
		}
		return userIdentities;
	}

	private Set<UserIdentity> createRandomPassword(List<Person> people) {
		Set<UserIdentity> userIdentities = new HashSet<UserIdentity>();
		for (Person person : people) {
			Admission admission = getAdmissionDao().getAdmission(person);
			UserIdentity userIdentity = admission.getUserIdentity();
			createRandomPassword(userIdentity);
			userIdentities.add(userIdentity);
		}
		return userIdentities;
	}

	@Override
	public UserIdentity createRandomPassword(UserIdentity userIdentity) {
		if (userIdentity.getUserPassword() == null) {
			userIdentity.setUserPassword(getPasswordGenerator().createUserPassword());
		} else {
			getPasswordGenerator().resetUserPassword(userIdentity.getUserPassword());
		}
		return userIdentity;
	}

	@Override
	public UserIdentity createRandomPassword(String admissionCode, String email) {
		return null;
	}

}
