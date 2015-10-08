package ua.com.feiron.repository;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.com.feiron.domain.Profnastil;

import java.util.List;

@Repository
@Transactional
public class ProfnastilRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void addProfnastil(Profnastil profnastil) {
        this.sessionFactory.getCurrentSession().save(profnastil);
    }

    public List<Profnastil> listAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from Profnastil").list();
    }

    public void removeProfnastil(Integer iD) {
        Profnastil profnastil = (Profnastil) this.sessionFactory.getCurrentSession().load(Profnastil.class, iD);
        if (null != profnastil) {
            this.sessionFactory.getCurrentSession().delete(profnastil);
        }
    }
}
