package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlTransient;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findProgrammesByNameEquals" })
@XmlAccessorType(XmlAccessType.FIELD)
public class Programme {

	@Version
	@Transient
	@XmlTransient
	private int version;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@XmlTransient
	private Long programmeId;

	@NotNull
	@Column(unique = true)
	private String name;
	
	@ManyToOne(cascade = CascadeType.ALL)
	private StudyMode studyMode;
	
	@ManyToOne(cascade = CascadeType.ALL)
	private Degree degree;
	
	@ManyToOne(cascade = CascadeType.ALL)
	private Language language;

	private static final String[] excludeFields = new String[] { "programmeId" };

	@Override
	public boolean equals(Object obj) {
		return EqualsBuilder.reflectionEquals(this, obj, excludeFields);
	}
}
