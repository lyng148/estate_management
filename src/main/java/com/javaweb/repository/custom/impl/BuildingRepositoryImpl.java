package com.javaweb.repository.impl;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import com.javaweb.repository.entity.BuildingEntity;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


@Repository
@Primary
public class BuildingRepositoryImpl implements BuildingRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;
    // Build query su dung ten cac field cua builder
    // => Can dong bo ten cac Field voi Column trong bang
    public void queryJoin(BuildingSearchBuilder builder, StringBuilder sql) {
        String join = "";
//        if (builder.getTypeCode() != null && !builder.getTypeCode().isEmpty()) {
//            join += " JOIN buildingrenttype " +
//                    " ON buildingrenttype.buildingid = building.id " +
//                    " JOIN renttype " +
//                    " ON buildingrenttype.renttypeid = renttype.id";
//        }
        Long staffId = builder.getStaffId();
        if (staffId != null) {
            join += " LEFT JOIN assignmentbuilding" +
                    " ON assignmentbuilding.buildingid = building.id";
        }
        Long startRentArea = builder.getStartRentArea();
        Long endRentArea = builder.getEndRentArea();
        if (startRentArea != null || endRentArea != null) {
            join += " JOIN rentarea" +
                    " on rentarea.buildingid = building.id";
        }
        sql.append(join);
    }

    // cac thuoc tinh co the query tu bang building
    public void querySqlNormal(BuildingSearchBuilder builder, StringBuilder sql) {
        try{
            Field[] fields = BuildingSearchBuilder.class.getDeclaredFields();
            for (Field item : fields)
            {
                item.setAccessible(true);
                String fieldName = item.getName();
                if (!fieldName.equals("staffId")  && !fieldName.endsWith("RentArea") && !fieldName.endsWith("Price") && !fieldName.equals("direction"))
                {
                    Object value = item.get(builder);
                    if (value != null)
                    {
                        if (item.getType().getName().equals("java.lang.Long"))
                        {
                            sql.append(" AND building." + fieldName.toLowerCase() + " = " + value);
                        }
                        else
                            sql.append(" AND building." + fieldName.toLowerCase() + " LIKE '%" + value + "%' ");
                    }
                }
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    public void querySqlSpecial(BuildingSearchBuilder builder, StringBuilder sql) {
        Long startRentArea = builder.getStartRentArea();
        Long endRentArea = builder.getEndRentArea();
        if (startRentArea != null)
        {
            sql.append(" AND rentarea.value >= " + startRentArea);
        }
        if (endRentArea != null)
        {
            sql.append(" AND rentarea.value <= " + endRentArea);
        }

        /*
        Query khong can den join su dung EXISTS trong sql
        if (startRentArea != null || endRenArea != null)
        {
            sql.append( AND EXISTS (SELECT * FROM rentarea WHERE building.id = rentarea.buildingid);
            if (startRentArea != null)
            {
                sql.append(" AND rentarea.value >= " + startRentArea);
            }
            if (endRentArea != null)
            {
                sql.append(" AND rentarea.value <= " + endRentArea);
            }
            sql.append(" ) ");
        }

         */

        Long staffId = builder.getStaffId();
        if (staffId != null)
        {
            sql.append(" AND staffid = " + staffId);
        }

        Long startPrice = builder.getStartPrice();
        Long endPrice = builder.getEndPrice();
        if (startPrice != null)
        {
            sql.append(" AND building.rentprice >= " + startPrice);
        }
        if (endPrice != null)
        {
            sql.append(" AND building.rentprice <= " + endPrice);
        }

        sql.append(" GROUP BY building.id)");

    }

    @Override
    public ArrayList<BuildingEntity> find(BuildingSearchBuilder builder) {
        StringBuilder sql = new StringBuilder("SELECT * FROM building WHERE id IN (" +
                " SELECT building.id FROM building");
        queryJoin(builder, sql);
        sql.append(" WHERE 1 = 1 ");
        querySqlNormal(builder, sql);
        querySqlSpecial(builder, sql);
        System.out.println(sql + "\n" + "===========================================\n");
        ArrayList<BuildingEntity> buildingEntities = new ArrayList<>();

        Query query = entityManager.createNativeQuery(sql.toString(), BuildingEntity.class);
        buildingEntities = (ArrayList<BuildingEntity>) query.getResultList();
        return buildingEntities;
    }

}
