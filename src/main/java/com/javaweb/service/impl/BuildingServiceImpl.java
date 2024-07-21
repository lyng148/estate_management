package com.javaweb.service.impl;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.converter.BuildingConverter;
import com.javaweb.converter.BuildingSearchBuilderConverter;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.entity.BuildingEntity;
import com.javaweb.service.BuildingService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.stream.Collectors;

@Service
public class BuildingServiceImpl implements BuildingService {

    @Autowired
    private BuildingSearchBuilderConverter buildingSearchBuilderConverter;

    @Autowired
    private BuildingRepository buildingRepository;

    @Autowired
    private BuildingConverter buildingConverter;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public ArrayList<BuildingSearchResponse> findAll(BuildingSearchRequest request) {
        BuildingSearchBuilder builder = buildingSearchBuilderConverter.toBuildingSearchBuilder(request);
        ArrayList<BuildingEntity> buildingEntities = buildingRepository.find(builder);
        ArrayList<BuildingSearchResponse> buildingSearchResponses = buildingConverter.convert(buildingEntities);
        return buildingSearchResponses;
    }

    @Override
    public void createAndUpdateBuilding(BuildingDTO buildingDTO) {
        BuildingEntity buildingEntity = modelMapper.map(buildingDTO, BuildingEntity.class);
        String type = "";
        if (buildingDTO.getType() != null) {
            type = buildingDTO.getType().stream().collect(Collectors.joining(","));
        }
        buildingEntity.setType(type == null ? "" : type);
        buildingRepository.save(buildingEntity);
    }

    @Override
    public void deleteBuildings(ArrayList<Long> ids) {

    }
}
