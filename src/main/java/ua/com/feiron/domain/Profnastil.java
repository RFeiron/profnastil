package ua.com.feiron.domain;

import javax.persistence.*;

@Entity
@Table(name = "proflists")
public class Profnastil {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "WORKB")
    private Integer workB;

    @Column(name = "OBSHAYAB")
    private Integer obshayaB;

    public String getName() {
        return name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getWorkB() {
        return workB;
    }

    public void setWorkB(Integer workB) {
        this.workB = workB;
    }

    public Integer getObshayaB() {
        return obshayaB;
    }

    public void setObshayaB(Integer obshayaB) {
        this.obshayaB = obshayaB;
    }
}
