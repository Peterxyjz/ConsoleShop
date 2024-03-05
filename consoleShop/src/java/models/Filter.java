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
    
    private Map<String,String> sortList;

    public Filter() {
        this.sortList.put("proName ASC", "Mặc định");
        this.sortList.put("proName ASC", "Bán chạy nhất");
        this.sortList.put("proName ASC", "Mới cập nhật");
        this.sortList.put("price ASC", "Giá thấp đến cao");
        this.sortList.put("price DESC", "Giá cao đến thấp");
        this.sortList.put("proName ASC", "Tên từ A đến Z");
        this.sortList.put("proName DESC", "Tên từ Z đến A");
    }

    public Map<String, String> getCategoryList() {
        return categoryList;
    }

    public Map<String, String> getStatusList() {
        return statusList;
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

   

    public void setSortList(Map<String, String> sortList) {
        this.sortList = sortList;
    }

    
    
  

   
    
    
}
