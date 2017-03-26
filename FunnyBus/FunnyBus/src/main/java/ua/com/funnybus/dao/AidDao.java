package ua.com.funnybus.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.com.funnybus.entity.Aid;

public interface AidDao extends JpaRepository<Aid, Integer> {
	Aid findByTitle(String title);
	Aid findByDate(String date);
	Aid findByInfo(String info);
}
