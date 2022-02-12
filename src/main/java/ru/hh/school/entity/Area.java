package ru.hh.school.entity;

import javax.persistence.*;

//TODO: оформите entity
@Entity
@Table(name = "area")
public class Area {

  @Id
  @Column(name = "area_id")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  @Column(name = "name")
  private String name;

  public Area() {
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Override
  public String toString() {
    return "Area{" +
            "id=" + id +
            ", name='" + name + '\'' +
            '}';
  }
}
