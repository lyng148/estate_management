package com.javaweb.repository.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "building")
public class BuildingEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "district")
    private String district;
    @Column(name = "type")
    private String type;
    @Column(name = "ward")
    private String ward;
    @Column(name = "managername")
    private String managerName;
    @Column(name = "managerphone")
    private String managerPhone;
    @Column(name = "street")
    private String street;
    @Column(name = "floorarea")
    private Long floorArea;



    // Fetch type LAZY: Khong lay het cac doi tuong lien quan, chi lay khi goi ham get => Tang toc khi query voi so luong record lon
    @OneToMany(mappedBy = "building", fetch = FetchType.EAGER)
    private List<RentAreaEntity> rentAreaEntities;

    @Column(name = "rentprice")
    private Long rentPrice;
    @Column(name = "numberofbasement")
    private Long numberOfBasement;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getManagerphone() {
        return managerPhone;
    }

    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone;
    }


    public Long getFloorArea() {
        return floorArea;
    }

    public void setFloorArea(Long floorArea) {
        this.floorArea = floorArea;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }


    public List<RentAreaEntity> getRentAreaEntities() {
        return rentAreaEntities;
    }

    public void setRentAreaEntities(List<RentAreaEntity> rentAreaEntities) {
        this.rentAreaEntities = rentAreaEntities;
    }



    public Long getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(Long rentPrice) {
        this.rentPrice = rentPrice;
    }

    public Long getNumberOfBasement() {
        return numberOfBasement;
    }

    public void setNumberOfBasement(Long numberOfBasement) {
        this.numberOfBasement = numberOfBasement;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }


    public BuildingEntity() {
    }
}
