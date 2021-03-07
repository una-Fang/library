# 图书借阅系统数据库设计

## 1.整体说明

1.图书类别表bookcase，通过此表可定义图书的类别；

使用模块：图书类别的信息储存以及处理模块；

2.借阅记录表borrow，通过此表可定义每个学生在数据库中的借阅信息；

使用模块：图书的借阅信息储存以及处理模块；

3.归还记录表returnbook，通过此表可定义每个学生在数据库中的归还信息；

使用模块：图书的归还信息储存以及处理模块；

4.图书信息表book，通过此表可定义每本图书在数据库中储存的基本信息；

使用模块：图书的信息储存以及处理模块；

5.管理员数据库表bookadmin，通过此表可定义管理员在数据库中的账号信息；

使用模块：账号的信息储存以及处理模块；

6.读者信息表reader，通过此表可定义每个学生在数据库中的基本信息；

使用模块：学生的信息储存以及处理模块；

## 2.系统平台

1.开发工具：IntelliJ IDEA

2.数据库MySQL8.0，Navicat 15可视化工具

3.操作系统：win10



## 3.表结构说明

1.图书类别表bookcase

| 字段名 | 类型    | 长度 | 小数点 | 是否为空 | 是否为主键 |
| ------ | ------- | ---- | ------ | -------- | ---------- |
| id     | int     | 0    | 0      | 否       | 是         |
| name   | varchar | 0    | 0      |          |            |

2.借阅记录表borrow

| 字段名     | 类型 | 长度 | 小数点 | 是否为空 | 是否为主键 |
| ---------- | ---- | ---- | ------ | -------- | ---------- |
| id         | int  | 0    | 0      | 否       | 是         |
| bookid     | int  | 0    | 0      |          |            |
| readerid   | int  | 0    | 0      |          |            |
| borrowtime | date | 0    | 0      |          |            |
| returntime | date | 0    | 0      |          |            |
| adminid    | int  | 0    | 0      |          |            |
| state      | int  | 0    | 0      |          |            |

3.归还记录表returnbook

| 字段名     | 类型    | 长度 | 小数点 | 是否为空 | 是否为主键 |
| ---------- | ------- | ---- | ------ | -------- | ---------- |
| id         | int     | 0    | 0      | 否       | 是         |
| bookname   | varchar | 20   | 0      |          |            |
| readerid   | int     | 0    | 0      |          |            |
| returntime | date    | 0    | 0      |          |            |
| borrowtime | int     | 0    | 0      |          |            |

4.图书信息表book

| 字段名     | 类型    | 长度 | 小数点 | 是否为空 | 是否为主键 |
| ---------- | ------- | ---- | ------ | -------- | ---------- |
| id         | int     | 0    | 0      | 否       | 是         |
| name       | varchar | 20   | 0      |          |            |
| author     | varchar | 20   | 0      |          |            |
| publish    | varchar | 20   | 0      |          |            |
| pages      | int     | 0    | 0      |          |            |
| price      | float   | 6    | 2      |          |            |
| bookcaseid | int     | 0    | 0      |          |            |
| abled      | int     | 0    | 0      |          |            |

5.管理员数据库表bookadmin

| 字段名   | 类型    | 长度 | 小数点 | 是否为空 | 是否为主键 |
| -------- | ------- | ---- | ------ | -------- | ---------- |
| id       | int     | 0    | 0      | 否       | 是         |
| username | varchar | 15   | 0      |          |            |
| password | int     | 20   | 0      |          |            |

6.读者信息表reader

| 字段名   | 类型    | 长度 | 小数点 | 是否为空 | 是否为主键 |
| -------- | ------- | ---- | ------ | -------- | ---------- |
| id       | int     | 0    | 0      | 否       | 是         |
| username | varchar | 20   | 0      |          |            |
| password | varchar | 20   | 0      |          |            |
| name     | varchar | 8    | 0      |          |            |
| tel      | varchar | 11   | 0      |          |            |
| cardid   | varchar | 10   | 0      |          |            |
| gender   | varchar | 2    | 0      |          |            |

