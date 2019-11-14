package org.kacperjagodzinski.finalproject.walk;

import lombok.Getter;
import lombok.Setter;
import org.kacperjagodzinski.finalproject.user.User;

import javax.persistence.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Setter
@Getter
@Table(name="walks")
public class Walk {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Date datetime;

    private String place;

    private boolean ifActive = true;

    @ManyToOne
    @JoinColumn(name="admin_id")
    private User user;

    @ManyToMany(mappedBy = "walks")
    private List<User> users = new ArrayList<>();

    public void setDatetimeString(String datetime) throws ParseException {
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        this.datetime =  (Date)formatter.parse(datetime);
    }

    public String getDatetimeString() {
        if (datetime == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        return formatter.format(this.datetime);
    }
}
