package dao;

import bean.Category;
import bean.Product;
import db.JDBIConnector;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class CategoryDAO {

    public static List<Category> getAllCategory(){
        List<Category> categoryList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select name from categories")
                        .mapToBean(Category.class)
                        .collect(Collectors.toList())
        );
        return categoryList;
    }

    public static String getCategoryName(int id) {
        return JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT name FROM categories WHERE id = :id")
                        .bind("id", id)
                        .mapTo(String.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public static String getBrandName(int id) {
        return JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT name FROM brands WHERE id = :id")
                        .bind("id", id)
                        .mapTo(String.class)
                        .findOne()
                        .orElse(null)
        );
    }

//    public static void main(String[] args) {
//        for (int i = 1; i < 8; i++) {
//            System.out.println(getBrandName(i));
//        }
//    }

    public static String getSupplierName(int id) {
        return JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT name FROM suppliers WHERE id = :id")
                        .bind("id", id)
                        .mapTo(String.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public static Double getDiscountAmount(int id){
        return  JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT amount FROM discount WHERE id = :id")
                        .bind("id", id)
                        .mapTo(Double.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public static String getDiscountStartDay(int id){
        return JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT startDate FROM discount WHERE id = :id")
                        .bind("id", id)
                        .mapTo(String.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public static String getDiscountEndDay(int id){
        return JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT endDate FROM discount WHERE id = :id")
                        .bind("id", id)
                        .mapTo(String.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public static void main(String[] args) {
        Product product = ProductDAO.getProductById(4).get(0);
        System.out.println(product.toString());
        System.out.println(getDiscountAmount(product.getDiscountId()));
    }
}
