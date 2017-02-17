package autoplus.secure.entity;

import javax.persistence.*;

/**
 * Created by Admin on 19.08.2016.
 */
@Entity
@Table(name="tyres")
public class Tyres {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id", length = 6, nullable = false)
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "price")
    private String price;
    @Column(name = "size")
    private String size;
    @Column(name = "image")
    private String image;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
