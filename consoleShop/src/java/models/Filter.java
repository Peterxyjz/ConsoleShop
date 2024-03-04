/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;
import java.util.Map;

/**
 *
 * @author QUOC PHONG
 */
public class Filter {
    private Map<String, String> categoryList;
    private Map<String, String> statusList;
    private Map<Double, Double> priceLowerList;
    private Map<Double,Double> priceUpperList;
    private Map<String,String> sortList;

    public Filter() {
    }

    public Map<String, String> getCategoryList() {
        return categoryList;
    }

    public Map<String, String> getStatusList() {
        return statusList;
    }

    public Map<Double, Double> getPriceLowerList() {
        return priceLowerList;
    }

    public Map<Double, Double> getPriceUpperList() {
        return priceUpperList;
    }

    public Map<String, String> getSortList() {
        return sortList;
    }

    public void setCategoryList(Map<String, String> categoryList) {
        this.categoryList = categoryList;
    }

    public void setStatusList(Map<String, String> statusList) {
        this.statusList = statusList;
    }

    public void setPriceLowerList(Map<Double, Double> priceLowerList) {
        this.priceLowerList = priceLowerList;
    }

    public void setPriceUpperList(Map<Double, Double> priceUpperList) {
        this.priceUpperList = priceUpperList;
    }

    public void setSortList(Map<String, String> sortList) {
        this.sortList = sortList;
    }

    
    
  

   
    
    
}
