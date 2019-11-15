package com.web.auction.mapper;

import com.web.auction.pojo.Orderuser;
import com.web.auction.pojo.OrderuserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderuserMapper {
    int countByExample(OrderuserExample example);

    int deleteByExample(OrderuserExample example);

    int deleteByPrimaryKey(String orderno);

    int insert(Orderuser record);

    int insertSelective(Orderuser record);

    List<Orderuser> selectByExample(OrderuserExample example);

    Orderuser selectByPrimaryKey(String orderno);

    int updateByExampleSelective(@Param("record") Orderuser record, @Param("example") OrderuserExample example);

    int updateByExample(@Param("record") Orderuser record, @Param("example") OrderuserExample example);

    int updateByPrimaryKeySelective(Orderuser record);

    int updateByPrimaryKey(Orderuser record);
    
    List<Orderuser> getOrderUserListBySearch(String keyword);
    
    int PlaceOrder(String orderno);
    
    List<Orderuser> getnoPriceOrder();
 
}