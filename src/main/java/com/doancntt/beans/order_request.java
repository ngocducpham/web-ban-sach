package com.doancntt.beans;

import java.util.Date;

public class order_request {
    private int order_request_id,status,customer_ID;
    private Date request_date;

    public int getOrder_request_id() {
        return order_request_id;
    }

    public void setOrder_request_id(int order_request_id) {
        this.order_request_id = order_request_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCustomer_ID() {
        return customer_ID;
    }

    public void setCustomer_ID(int customer_ID) {
        this.customer_ID = customer_ID;
    }

    public Date getRequest_date() {
        return request_date;
    }

    public void setRequest_date(Date request_date) {
        this.request_date = request_date;
    }

    public order_request(int status, int customer_ID, Date request_date) {
        this.status = status;
        this.customer_ID = customer_ID;
        this.request_date = request_date;
    }

    public order_request(int order_request_id, int status, int customer_ID, Date request_date) {
        this.order_request_id = order_request_id;
        this.status = status;
        this.customer_ID = customer_ID;
        this.request_date = request_date;
    }
}
