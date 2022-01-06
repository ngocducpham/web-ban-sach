package com.doancntt.models;

import com.doancntt.beans.Author;
import com.doancntt.beans.Book;
import com.doancntt.utils.DatabaseUtils;
import org.sql2o.Connection;

import java.util.List;

public class BookModel {
    public static List<Book> findByCategory(int categoryID) {
        return null;
    }

    public static List<Book> findAll() {
        final String query = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "       Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "order by bc.Category_ID";
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> findNewBook(int limit) {
        String query = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "       Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "order by Publication_Date desc";
        if (limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> timSachVanHocMoi(int limit) {
        String query = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where bc.Category_ID = 2 or bc.Category_ID = 3\n" +
                "order by Publication_Date desc";
        if (limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> timSachKinhTeMoi(int limit) {
        String query = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where bc.Category_ID = 1\n" +
                "order by Publication_Date desc";
        if (limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> timSachDoiSongMoi(int limit) {
        String query = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where bc.Category_ID = 4\n" +
                "order by Publication_Date desc";
        if (limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static Book FindBookById(int id) {
        String findQuery = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img," +
                "       Language_Name, Category_Name, Publisher_Name, Author_Name from  books " +
                "    join author a on a.Author_ID = books.Author_ID " +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID " +
                "    join book_category bc on bc.Category_ID = books.Category_ID " +
                "    join book_language bl on books.Language_ID = bl.Language_ID " +
                "    where Book_ID = :bookid";
        try (Connection conn = DatabaseUtils.createConnection()) {
            List<Book> list = conn.createQuery(findQuery).
                    addParameter("bookid", id).
                    executeAndFetch(Book.class);
            if (list.size() == 0) return null;
            else return list.get(0);
        }
    }

    public static List<Book> searchBook(String text) {
        text = "%" + text + "%";
        String query = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "       Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "    where Title like :text or Publisher_Name like :text or Author_Name like :text \n" +
                "order by Publication_Date desc;";
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).
                    addParameter("text", text).
                    executeAndFetch(Book.class);
        }
    }

    public static List<Book> FindListOfBookById(String List_id) {
        String findQuery = "select Book_ID, Title, Pages, Publication_Date, Description, Price, Discount, Img," +
                "       Language_Name, Category_Name, Publisher_Name, Author_Name from  books " +
                "    join author a on a.Author_ID = books.Author_ID " +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID " +
                "    join book_category bc on bc.Category_ID = books.Category_ID " +
                "    join book_language bl on books.Language_ID = bl.Language_ID " +
                "    where Book_ID in (" + List_id + ")" +
                "order by Book_ID";
        try (Connection conn = DatabaseUtils.createConnection()) {
            List<Book> list = conn.createQuery(findQuery).
                    executeAndFetch(Book.class);
            return list;
        }
    }

    public static boolean check_author(String author) {
        String text = "%" + author + "%";
        String sql = "select *\n" +
                "from author where Author_Name like :text;";
        try (Connection conn = DatabaseUtils.createConnection()) {
            List<Author> list = conn.createQuery(sql)
                    .addParameter("text", author)
                    .executeAndFetch(Author.class);
            return list.size() != 0;
        }
    }

    public static int findAuthor(String author) {
        String text = "%" + author + "%";
        String sql = "select Author_ID\n" +
                "from author where Author_Name like :text;";
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(sql)
                    .addParameter("text", author)
                    .executeAndFetch(Integer.class).get(0);
        }
    }

    public static void add_author(String author) {
        String sql = "insert into author (Author_Name)\n" +
                "values (:author);";
        try (Connection conn = DatabaseUtils.createConnection()) {
            conn.createQuery(sql)
                    .addParameter("author", author)
                    .executeUpdate();
        }
    }

    public static int get_max_author_id() {
        String sql = "select max(Author_ID) as max from author";
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(sql).executeAndFetch(Integer.class).get(0);
        }
    }

    public static int get_max_book_id() {
        String sql = "select max(Book_ID) as max from books";
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(sql).executeAndFetch(Integer.class).get(0) + 1;
        }
    }

    public static void add_new_book(Book b) {
        String sql = "\n" +
                "insert into books (Title, Pages, Publication_Date, Description, Price, Discount, Language_ID, Category_ID,\n" +
                "                   Publisher_ID, Author_ID, Img)\n" +
                "values (:Title,:Pages,:Publication_Date,:Description,:Price,:Discount,:Language_ID,:Category_ID,:Publisher_ID,:Author_ID,:Img);";
        try (Connection conn = DatabaseUtils.createConnection()) {
            conn.createQuery(sql)
                    .addParameter("Title", b.getTitle())
                    .addParameter("Pages", b.getPages())
                    .addParameter("Publication_Date", b.getPublication_Date())
                    .addParameter("Description", b.getDescription())
                    .addParameter("Price", b.getPrice())
                    .addParameter("Discount", b.getDiscount())
                    .addParameter("Language_ID", b.getBook_Language())
                    .addParameter("Category_ID", b.getBook_Category())
                    .addParameter("Publisher_ID", b.getBook_Publisher())
                    .addParameter("Author_ID", b.getBook_Author())
                    .addParameter("Img", b.getImg())
                    .executeUpdate();
        }
    }

    public static List<Book> searchByCate(int cateID){
        String query = "select Book_ID,\n" +
                "       Title,\n" +
                "       Pages,\n" +
                "       Publication_Date,\n" +
                "       Description,\n" +
                "       Price,\n" +
                "       Discount,\n" +
                "       Img,\n" +
                "       Language_Name,\n" +
                "       Category_Name,\n" +
                "       Publisher_Name,\n" +
                "       Author_Name\n" +
                "from books\n" +
                "         join author a on a.Author_ID = books.Author_ID\n" +
                "         join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "         join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "         join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where books.Category_ID = :id\n" +
                "order by Publication_Date desc";

        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).addParameter("id", cateID).executeAndFetch(Book.class);
        }
    }

    public static List<Book> timSachBanChay(){
        String query = "select Book_ID,\n" +
                "       Title,\n" +
                "       Pages,\n" +
                "       Publication_Date,\n" +
                "       Description,\n" +
                "       Price,\n" +
                "       Discount,\n" +
                "       Img,\n" +
                "       Language_Name,\n" +
                "       Category_Name,\n" +
                "       Publisher_Name,\n" +
                "       Author_Name\n" +
                "from books\n" +
                "         join author a on a.Author_ID = books.Author_ID\n" +
                "         join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "         join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "         join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where books.Category_ID = :id\n" +
                "order by Publication_Date desc";

        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static void deleteBook(int bookID){
        String query = "delete from order_detail where Book_ID = :id;";
        try (Connection conn = DatabaseUtils.createConnection()) {
            conn.createQuery(query).addParameter("id", bookID).executeUpdate();
        }
        query = "delete from books where Book_ID = :id;";
        try (Connection conn = DatabaseUtils.createConnection()) {
            conn.createQuery(query).addParameter("id", bookID).executeUpdate();
        }
    }

    public static void updateBook(int id, String title, int page, String pubDate, String desc, int price, int dis, int langID, int pubID, int cateID){
        String query = "update books set Title = :title, Pages = :pages, Publication_Date = :pubDate,\n" +
                "                 Description = :decs, Price = :price, Discount = :dis,\n" +
                "                 Language_ID = :lang, Category_ID = :cate, Publisher_ID = :pubID\n" +
                "where Book_ID = :bookID";
        try (Connection conn = DatabaseUtils.createConnection()) {
            conn.createQuery(query)
                    .addParameter("title", title)
                    .addParameter("pages", page)
                    .addParameter("pubDate", pubDate)
                    .addParameter("decs", desc)
                    .addParameter("price", price)
                    .addParameter("dis", dis)
                    .addParameter("lang", langID)
                    .addParameter("cate", cateID)
                    .addParameter("bookID", id)
                    .addParameter("pubID", pubID)
                    .executeUpdate();
        }
    }
}
