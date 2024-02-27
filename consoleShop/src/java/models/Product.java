/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author ASUS
 */
public class Product {
     private int proId;
    private String proName, description, categoryId, brandId;
    private Double price;
    private Double discount;
    private int amount;
    public Product() {
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Double getDiscount() {
        return discount;
    }

    public int getAmount() {
        return amount;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}
