package com.javaweb.converter;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.model.request.BuildingSearchRequest;
import org.springframework.stereotype.Component;

import java.util.stream.Collectors;

@Component
public class BuildingSearchBuilderConverter {
    public BuildingSearchBuilder toBuildingSearchBuilder(BuildingSearchRequest buildingSearchRequest) {
        String type = "";
        if (buildingSearchRequest.getType() != null) {
            type = buildingSearchRequest.getType().stream().collect(Collectors.joining(","));
        }
        BuildingSearchBuilder builder = new BuildingSearchBuilder.Builder()
                .setName(buildingSearchRequest.getName())
                .setWard(buildingSearchRequest.getWard())
                .setManagerName(buildingSearchRequest.getManagerName())
                .setManagerPhone(buildingSearchRequest.getManagerPhone())
                .setStreet(buildingSearchRequest.getStreet())
                .setDirection((buildingSearchRequest.getDirection()))
                .setStaffId(buildingSearchRequest.getStaffId())
                .setStartRentArea(buildingSearchRequest.getStartRentArea())
                .setEndRentArea(buildingSearchRequest.getEndRentArea())
                .setStartPrice(buildingSearchRequest.getStartRentPrice())
                .setEndPrice(buildingSearchRequest.getEndRentPrice())
                .setFloorArea(buildingSearchRequest.getFloorArea())
                .setDistrict(buildingSearchRequest.getDistrict())
                .setNumberOfBasement(buildingSearchRequest.getNumberOfBasement())
                .setLevel(buildingSearchRequest.getLevel())
                .setType(type.equals("") ? null : type)
                .build();

        return builder;
    }
}
