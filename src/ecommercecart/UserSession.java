/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommercecart;

/**
 *
 * @author Levi
 */
class UserSession {
    private User currentUser;

    public void login(User user) {
        currentUser = user;
    }

    public void logout() {
        currentUser = null;
    }

    public User getCurrentUser() {
        return currentUser;
    }
}
