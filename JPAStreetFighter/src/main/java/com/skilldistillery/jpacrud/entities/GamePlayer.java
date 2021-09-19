package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "game_character")
public class GamePlayer {

	public GamePlayer() {
		super();
	}

	@Id
	@GeneratedValue
	private int id;

	private String name;

	private String gender;

	private String origin;

	@Column(name = "fight_style")
	private String fightStyle;

	@Column(name = "special_move")
	private String specialMove;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getFightStyle() {
		return fightStyle;
	}

	public void setFightStyle(String fightStyle) {
		this.fightStyle = fightStyle;
	}

	public String getSpecialMove() {
		return specialMove;
	}

	public void setSpecialMove(String specialMove) {
		this.specialMove = specialMove;
	}

	@Override
	public String toString() {
		return "GamePlayer [id=" + id + ", name=" + name + ", gender=" + gender + ", origin=" + origin + ", fightStyle="
				+ fightStyle + ", specialMove=" + specialMove + "]";
	}

}
