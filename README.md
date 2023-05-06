# 📝项目介绍

项目工具:  IntelliJ IDEA 2023.2.2+Navicat Premium 16+ElementUI

图书后台管理系统，采用SpringBoot+Mybatius+Thymeleaf，页面使用Element框架，使用RESTful API风格编写接口。

数据库使用mysql

#### 已实现功能

- [x] 基本增删改查,联表查询
- [x] 拦截器登录验证



#### 项目技术栈

- Spring Boot

- MyBatis-puls

- MySQL

- ElementUI

  

# 🌹项目预览

账号:admin 密码:123456

#### 登录页面

![image](https://cdn.staticaly.com/gh/1902756969/picgo_imgs@master/image.6ipb7d6m2wc0.webp)

#### 图书管理

![image](https://cdn.staticaly.com/gh/1902756969/picgo_imgs@master/image.65bq21dep6g0.webp)

#### 读者管理

![image-20230506132559486](C:\Users\axing\AppData\Roaming\Typora\typora-user-images\image-20230506132559486.png)

#### 借阅管理

![image](https://cdn.staticaly.com/gh/1902756969/picgo_imgs@master/image.65bq21dep6g0.webp)







## ✔数据库设计

![image](https://cdn.staticaly.com/gh/1902756969/picgo_imgs@master/image.11bnmnw0lyts.webp)





#### 读者表

```sql
DROP TABLE IF EXISTS `tbl_reader`;
CREATE TABLE `tbl_reader`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `reader_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reader_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` int(32) NULL DEFAULT NULL,
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reader_id`(`reader_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
```



#### 用户表

```sql
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
```



#### 借阅表

```sql
-- ----------------------------
DROP TABLE IF EXISTS `tbl_borrow`;
CREATE TABLE `tbl_borrow`  (
  `isbn_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookname_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readerid_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readername_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardid_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(15) NOT NULL DEFAULT 1,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isbn_log`(`isbn_log`) USING BTREE,
  INDEX `readerid_log`(`readerid_log`) USING BTREE,
  CONSTRAINT `isbn_log` FOREIGN KEY (`isbn_log`) REFERENCES `tbl_book` (`isbn`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tbl_borrow_ibfk_1` FOREIGN KEY (`readerid_log`) REFERENCES `tbl_reader` (`reader_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
```

#### 图书表

```sql
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publication_date` date NULL DEFAULT NULL,
  `last` int(11) NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isbn`(`isbn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
```

# 
