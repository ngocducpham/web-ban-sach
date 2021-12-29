package com.doancntt.beans;

public class Admin {
    private int Admin_id;
    private String Account, Password;

    public Admin(int admin_id, String account, String password) {
        Admin_id = admin_id;
        Account = account;
        Password = password;
    }

    public int getAdmin_id() {
        return Admin_id;
    }

    public void setAdmin_id(int admin_id) {
        Admin_id = admin_id;
    }

    public String getAccount() {
        return Account;
    }

    public void setAccount(String account) {
        Account = account;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public Admin(String account, String password) {
        Account = account;
        Password = password;
    }
}
