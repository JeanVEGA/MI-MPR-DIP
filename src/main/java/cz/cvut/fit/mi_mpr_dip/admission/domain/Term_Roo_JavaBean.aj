// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Admission;
import cz.cvut.fit.mi_mpr_dip.admission.domain.Term;
import cz.cvut.fit.mi_mpr_dip.admission.domain.TermType;
import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Programme;
import java.util.Date;
import java.util.Set;

privileged aspect Term_Roo_JavaBean {
    
    public int Term.getVersion() {
        return this.version;
    }
    
    public void Term.setVersion(int version) {
        this.version = version;
    }
    
    public Long Term.getTermId() {
        return this.termId;
    }
    
    public void Term.setTermId(Long termId) {
        this.termId = termId;
    }
    
    public String Term.getRoom() {
        return this.room;
    }
    
    public void Term.setRoom(String room) {
        this.room = room;
    }
    
    public Integer Term.getCapacity() {
        return this.capacity;
    }
    
    public void Term.setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
    
    public Date Term.getRegisterFrom() {
        return this.registerFrom;
    }
    
    public void Term.setRegisterFrom(Date registerFrom) {
        this.registerFrom = registerFrom;
    }
    
    public Date Term.getRegisterTo() {
        return this.registerTo;
    }
    
    public void Term.setRegisterTo(Date registerTo) {
        this.registerTo = registerTo;
    }
    
    public Date Term.getAppologyTo() {
        return this.appologyTo;
    }
    
    public void Term.setAppologyTo(Date appologyTo) {
        this.appologyTo = appologyTo;
    }
    
    public Set<Programme> Term.getPrograms() {
        return this.programs;
    }
    
    public void Term.setPrograms(Set<Programme> programs) {
        this.programs = programs;
    }
    
    public Set<Admission> Term.getAdmissions() {
        return this.admissions;
    }
    
    public void Term.setAdmissions(Set<Admission> admissions) {
        this.admissions = admissions;
    }
    
    public TermType Term.getTermType() {
        return this.termType;
    }
    
    public void Term.setTermType(TermType termType) {
        this.termType = termType;
    }
    
}
