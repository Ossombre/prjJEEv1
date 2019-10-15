/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.lsi;

import java.util.ArrayList;



/**
 *
 * @author JAA
 */
public class Employee {
    private String fName;
    private String lName;
    private String hPhone;
    private String mPhone;
    private String pPhone;
    private String address;
    private String postCode;
    private String City;
    private String mail;

    public ArrayList<String> getDetails() {
        ArrayList<String> list = new ArrayList<String>();
        list.add(fName);
        list.add(lName);
        list.add(hPhone);
        list.add(mPhone);
        list.add(pPhone);
        list.add(address);
        list.add(postCode);
        list.add(City);
        list.add(mail);
        return list;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public void sethPhone(String hPhone) {
        this.hPhone = hPhone;
    }

    public void setmPhone(String mPhone) {
        this.mPhone = mPhone;
    }

    public void setpPhone(String pPhone) {
        this.pPhone = pPhone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }   
}