package org.dromara.hmily.demo.dubbo.order.bean;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.lang.Nullable;

/**
 * Created by zy on 2020/12/1.
 */

public class MyRoutingDataSource extends AbstractRoutingDataSource {
    @Nullable
    @Override
    protected Object determineCurrentLookupKey()
    {
        return DBContextHolder.get();
    }
}
