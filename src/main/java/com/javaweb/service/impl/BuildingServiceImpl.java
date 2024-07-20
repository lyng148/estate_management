package com.javaweb.service.impl;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.converter.BuildingConverter;
import com.javaweb.converter.BuildingSearchBuilderConverter;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.entity.BuildingEntity;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BuildingServiceImpl implements BuildingService {

    @Autowired
    private BuildingSearchBuilderConverter buildingSearchBuilderConverter;

    @Autowired
    private BuildingRepository buildingRepository;

    @Autowired
    private BuildingConverter buildingConverter;

    @Override
    public ArrayList<BuildingSearchResponse> findAll(BuildingSearchRequest request) {
        BuildingSearchBuilder builder = buildingSearchBuilderConverter.toBuildingSearchBuilder(request);
        ArrayList<BuildingEntity> buildingEntities = buildingRepository.find(builder);
        ArrayList<BuildingSearchResponse> buildingSearchResponses = buildingConverter.convert(buildingEntities);
        return buildingSearchResponses;
    }

    @Override
    public void createAndUpdateBuilding(BuildingSearchRequest requestDTO) {

    }

    @Override
    public void deleteBuildings(ArrayList<Long> ids) {

    }
}
