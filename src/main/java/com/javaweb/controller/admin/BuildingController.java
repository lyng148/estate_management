package com.javaweb.controller.admin;

import com.javaweb.enums.district;
import com.javaweb.enums.rentType;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController(value="buildingControllerOfAdmin")
public class BuildingController {
    @Autowired
    private IUserService iUserService;

    @GetMapping(value = "/admin/building-list")

    public ModelAndView buildingList(@ModelAttribute(name="modelSearch") BuildingSearchRequest buildingSearchRequest){
        ModelAndView modelAndView = new ModelAndView("admin/building/list");
        modelAndView.addObject("staffs", iUserService.getStaffs());
        modelAndView.addObject("districtCode",district.districtCode());
        modelAndView.addObject("rentType", rentType.rentTypeName());

        List<BuildingSearchResponse> responseList = new ArrayList<>();
        BuildingSearchResponse building1 = new BuildingSearchResponse();
        building1.setId(1L);
        building1.setName("Linh Tower");
        building1.setAddress("Ta Quang Buu, 22, Quan HBT");
        building1.setManagerName("Linh Nguyen");
        BuildingSearchResponse building2 = new BuildingSearchResponse();
        building2.setId(3L);
        building2.setName("Anh Building");
        building2.setAddress("Le Thanh Nghi, 22, Quan HBT");
        building2.setManagerName("Anh Nguyen");
        responseList.add(building1);
        responseList.add(building2);
        modelAndView.addObject("buildingList", responseList);
        return modelAndView;
    }

    @GetMapping(value = "/admin/building-edit")
    public ModelAndView editBuilding(@ModelAttribute(name = "building")BuildingDTO buildingDTO){
        ModelAndView modelAndView = new ModelAndView("admin/building/edit");
        modelAndView.addObject("districtCode",district.districtCode());
        modelAndView.addObject("rentType", rentType.rentTypeName());
        return modelAndView;
    }

    @GetMapping(value = "/admin/building-edit-{id}")
    public ModelAndView editOneBuilding(@PathVariable int id){
        // Co loi, vi trong view dang su dung BuildingDTO
        // findById => BuildingEntity
        // convert tu BuildingEntity => BuildingDTO
        ModelAndView modelAndView = new ModelAndView("admin/building/edit");
        return modelAndView;
    }
}
