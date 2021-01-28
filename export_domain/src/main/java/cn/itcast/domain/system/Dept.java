package cn.itcast.domain.system;

import java.io.Serializable;

public class Dept implements Serializable {
    private String id;
    private String deptName;
    private Dept parent;
    private String state;
    private String companyId;
    private String companyName;

    public Dept() {
    }

    public Dept(String id, String deptName, Dept parent, String state, String companyId, String companyName) {
        this.id = id;
        this.deptName = deptName;
        this.parent = parent;
        this.state = state;
        this.companyId = companyId;
        this.companyName = companyName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public Dept getParent() {
        return parent;
    }

    public void setParent(Dept parent) {
        this.parent = parent;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "id='" + id + '\'' +
                ", deptName='" + deptName + '\'' +
                ", parent=" + parent +
                ", state='" + state + '\'' +
                ", companyId='" + companyId + '\'' +
                ", companyName='" + companyName + '\'' +
                '}';
    }
}