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
	private Integer numberPlayers;
	private String wikipedia;
	//private String ebay;
	
	
	//TODO: new properties from table
	//dont forget getters setters tostring

	public Nes() {
		super();
	}

	public Nes(int id, String name, Integer year, String publisher, String style, Integer number_players,
			String wikipedia, String ebay) {
		super();
		this.id = id;
		this.name = name;
		this.year = year;
		this.publisher = publisher;
		this.style = style;
		this.numberPlayers = number_players;
		this.wikipedia = wikipedia;
	//	this.ebay = ebay;
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

	public Integer getNumber_players() {
		return numberPlayers;
	}

	public void setNumber_players(Integer number_players) {
		this.numberPlayers = number_players;
	}

	public String getWikipedia() {
		return wikipedia;
	}

	public void setWikipedia(String wikipedia) {
		this.wikipedia = wikipedia;
	}

//	//public String getEbay() {
//		return ebay;
//	}
//
//	public void setEbay(String ebay) {
//		this.ebay = ebay;
//	}

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
				+ ", number_players=" + numberPlayers + ", wikipedia=" + wikipedia + "]";
	}
	
	
}//EndClass
