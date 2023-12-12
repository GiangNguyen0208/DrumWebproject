package service;

import bean.User;
import dao.UserDAO;

import java.util.List;

public class SignUpService {

    UserDAO userDAO = new UserDAO();
    public static SignUpService instance;

    public static SignUpService getInstance() {
        if (instance == null) instance = new SignUpService();
        return instance;
    }

    public boolean checkUsernameExist(String usernameSignUp) {
        List<User> getUserList = userDAO.getUserList();
        for (User user :
                getUserList) {
            return user.getUsername().equals(usernameSignUp);
        }
        return false;
    }

    public boolean checkEmailExist(String email) {
        List<User> getUserList = userDAO.getUserList();
        for (User user :
                getUserList) {
            return user.getEmail().equals(email);
        }
        return false;
    }

    public boolean checkConfirmPassword(String password, String confirmPassword) {
        return !password.equals(confirmPassword);
    }

    public boolean register(String username, String email, String password, String confirmPassword) {
        return checkEmailExist(email) && checkUsernameExist(username) && checkConfirmPassword(password, confirmPassword);
    }

    public static void main(String[] args) {
        SignUpService signUpService = new SignUpService();
        System.out.println(signUpService.checkEmailExist("dai0601@gmail.com"));
    }
}
