## SQA Project Phase 2:
## Group 04 - Tut 04:
<ul>
    <li>Phan Quang Tuấn - 1901040191</li>
    <li>Nguyễn Tuấn Nghĩa - 1901040146</li>
    <li>Đào Xuân Tới - 1901040186</li>
    <li>Nguyễn Tố Uyên - 1901040235</li>
    <li>Nguyễn Tuấn Hoàng - 1901040086</li>
</ul>

## All Documents and Diagrams can be accessed through:
https://drive.google.com/drive/folders/1SkwbRf2WFkbq_nBlHS5vuhgFahnzzqPq?usp=sharing

## E-Commerce System (Focus on Books only - Bookworm shop)
<pre>
IMPORTANT: 
To run the website, the developer should go to MySQL and create a schema (database),
Then, from the MySQL, please import database's structure and data from the following folder
      ..\resources\bookworm.sql
to the created database.

IMPORTANT 2: 
The developer please goes to resources\application.properties
then change the database password to your current one in order to use it.

- The developer can run the website by accessing localhost:8080
- for login as admin account:
  admin8c@shopping.com
  123456
- for login as seller:
  seller@shopping.com
  123456
- for login as buyer:
  buyer@shopping.com
  123456
>> you can also go to the MySQL and run the query 'select * from `user`' to see the full list of
users
</pre>

## Technologies

<ul>
    <li>Spring boot MVC with thymeleaf + Rest API.</li>
    <li>Hibernate, lombok + JPA as ORM</li>
    <li>MySQL as the database.</li>
    <li>Bootstrap 4.3.1 as layout and template.</li>
    <li>jQuery + ajax for client manipulate with rest api.</li>
    <li>Springboot Security as authentication & authorization.</li>
    <li>Springboot multipart support for upload file.</li>
</ul>

Technique
<ul>
    <li>XML config/Java Config</li>
    <li>PRG</li>
    <li>JSP, Thymeleaf</li>
    <li>Bean Validation or Spring Validator</li>
    <li>Custom Validation Annotation</li>
    <li>Custom Formatter</li>
    <li>Uploading files</li>
    <li>Exception Handling (Individual, Globally)</li>
    <li>REST/Ajax – Error Handling</li>
    <li>Spring Security (Database, Logout, Remember Me, csrf, etc)</li>
    <li>Security authorization – interceptor, AOP</li>
    <li>Persistence – Hibernate + Spring Data</li>
    <li>CSS Library</li> 
</ul>

#### Project Features

1.	Users: Admin, Seller and Buyer
2.	Features of Admin<br/>
        <ul>
            <li>If seller register in this web site, need to get approval from Admin in order to post products in the web site</li>
            <li>Add Ads on pages</li>
            <li>Approve Review made by Buyer (no matter approve or reject)</li>
        </ul> 

3.	Features of Seller
        <ul> 
            <li>Register as Seller</li> 
            <li>Product (CRUD). When a product is added, the system should automatically notify all followers by website message</li> 
            <li>Seller cannot buy products from the website</li> 
            <li>Maintain orders  </li>
            <li>Cancel Order (Notify Buyer by website message), the status of order on buyer’s part should also changed</li> 
            <li>Change Order status (Shipped-On the way-Delivered)</li>
        </ul> 

4.	Features of Buyer
        <ul> 
            <li>Register as Buyer</li> 
            <li>Follow and Unfollow Seller</li> 
            <li>Can not sell items on this website</li> 
            <li>Can place an order </li>
            <li>Maintain Shopping Cart (CRUD)</li> 
            <li>Maintain Shipping and Billing Address</li> 
            <li>Maintain Payment </li>
            <li>Place order </li>
            <li>Every successful purchase (not returned), gain points from the website. You can use points to buy products (something like coupons).</li> 
            <li>Maintain Orders </li>
            <li>Check Order History </li>
            <li>Can cancel order before shipping, after shipping cannot</li>
            <li>Write Product Review. Review must be approved by Admin before live</li> 
        </ul>

