package com.cjb.service;

import com.alibaba.dubbo.config.annotation.Reference;
import com.cjb.api.OrderApi;
import com.cjb.api.WarehouseApi;
import org.dromara.hmily.annotation.Hmily;
import org.springframework.stereotype.Service;

@Service
public class BusinessServiceImpl implements BusinessService {

    @Reference(version = "1.0.0")
    public OrderApi orderApi;

    @Reference(version = "1.0.0")
    public WarehouseApi warehouseApi;


    @Override
    @Hmily(confirmMethod = "confirm", cancelMethod = "cancel")
    public void test(){
        orderApi.test();
        warehouseApi.test();
    }

    public void confirm() {
        System.out.println("=========进行订单confirm操作完成================");
    }

    public void cancel() {
        System.out.println("=========进行订单cancel操作完成================");
    }

}
