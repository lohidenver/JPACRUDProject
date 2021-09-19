package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "nes_game")
public class Nes {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private Integer year;
	private String publisher;
	private String style;
	@Column(name = "number_players")
	private String numberPlayers;
	private String wikipedia;

	public Nes() {
		super();
	}


	//	this.ebay = ebay;
	public Nes(int id, String name, Integer year, String publisher, String style, String numberPlayers,
			String wikipedia) {
		super();
		this.id = id;
		this.name = name;
		this.year = year;
		this.publisher = publisher;
		this.style = style;
		this.numberPlayers = numberPlayers;
		this.wikipedia = wikipedia;
	}



	public String getNumberPlayers() {
		return numberPlayers;
	}


	public void setNumberPlayers(String numberPlayers) {
		this.numberPlayers = numberPlayers;
	}


	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}



	public String getWikipedia() {
		return wikipedia;
	}

	public void setWikipedia(String wikipedia) {
		this.wikipedia = wikipedia;
	}

	public Nes(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

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

	@Override
	public String toString() {
		return "Nes [id=" + id + ", name=" + name + ", year=" + year + ", publisher=" + publisher + ", style=" + style
				+ ", numberPlayers=" + numberPlayers + ", wikipedia=" + wikipedia + "]";
	}
	
	
}//EndClass
