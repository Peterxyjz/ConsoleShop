package models;

import db.Product;

public class Item {
    private Product product;
    private int quantity;

    public Item() {
        this.product = null;
        this.quantity = 0;
    }

    public Item(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public double getNewPrice(){
        return (1-this.product.getDiscount())*this.product.getPrice();
    }
    
    public double getCost(){
        return this.quantity*this.getNewPrice();
    }
}
