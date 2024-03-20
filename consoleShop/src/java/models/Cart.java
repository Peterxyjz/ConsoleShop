package models;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Integer,Item> items = null;

    public Cart() {
        items = new HashMap<>();
    }

    public Collection<Item> getItems() {
        return items.values();
    }
    
    public void add(Item item){
        int id = item.getProduct().getProId();
        //neu items da co item thi cap nhat quantity
        if(items.containsKey(id)){
            Item oldItem = items.get(id);
            if((oldItem.getProduct().getAmount() - (oldItem.getQuantity() + item.getQuantity())) >0){
                oldItem.setQuantity(oldItem.getQuantity()+item.getQuantity());
            }
        }else{
            //them item vao items
            items.put(id, item);
        }            
    }

    public void setItems(Map<Integer, Item> items) {
        this.items = items;
    }
    
    public boolean isEmpty(){
        return this.items.isEmpty();
    }
    
    public int getQuantity(){
        int quantity = 0;
        for(int id: this.items.keySet()){
            Item item = this.items.get(id);
            quantity += item.getQuantity();
        }
        return quantity;
    }  
    
    public double getTotal(){
        double total = 0;
        for(Item item:this.getItems()){
            total += item.getCost();
        }
        return total;
    }
    
    public void remove(int id){
        this.items.remove(id);
    }
    
    public void empty(){
        this.items.clear();
    }
    
    public void update(int id, int quantity){
        Item item = this.items.get(id);
        item.setQuantity(quantity);
        System.out.println("finished : proId: " + id);
        System.out.println("quantity: "+items.get(id).getQuantity());
    }
}
