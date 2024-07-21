package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.ArrayList;

@RestController
@Transactional
@RequestMapping("/api/buildings")
public class BuildingAPI {
    @Autowired
    private BuildingService buildingService;

    @PostMapping
    public String createBuilding(@RequestBody BuildingDTO dto)
    {
        buildingService.createAndUpdateBuilding(dto);
        return new String("Building created");
    }

    @DeleteMapping
    public void deleteBuilding(@RequestBody ArrayList<Long> ids)
    {
        buildingService.deleteBuildings(ids);
    }
}
