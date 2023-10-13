-- 建表
create table if not exists student(
`id` int not null AUTO_INCREMENT,
`name` char(10),
`sex` char(10),
`age` int(10),
primary key(id)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE table teacher(
t_id int not null auto_increment comment 'id',
t_name char comment '姓名',
t_age int(10) comment '年龄',
t_dept char(10) comment '部门',
primary key (t_id)
)ENGINE=INNODB;

create table test(
`id` int not null comment 'id',
`name` char COMMENT'姓名',
sex char comment'性别'
)comment'测试表';

-- 插入数据
insert into test values(1,'花','8')
insert into test (id,`name`,sex) values
(2,'默','3')
insert into test(`name`,sex)values('子','2')
insert into test(`name`,logo)values
('安静','范特西'),
('你听得到','叶惠美'),
('你怎么连话都说不清楚','无与伦比'),
('你比从前快乐','范特西PLUS'),
('开不了口','范特西');

-- create table 新表 like 旧表
-- 创建与test表结构一样的新表test2(不复制数据)
create table test2 like test;
-- 创建与test表结构一样的新表test3（复制数据）
create table test3 as SELECT id,`name`,sex from test


-- 修改表结构
-- 为test表添加新字段logo ---add
alter table test add logo char(10)
-- 修改test表字段结构----modify
alter table test modify `name` char(10), modify sex int(10)
-- 删除test表字段------drop column 被删除字段名
alter table test drop column 旧列名 新列名
-- 修改列名 
alter table test change column logo album char(10);
-- 修改表名 旧表名 rename to 新表名
alter table test rename to song;



-- 修改表中数据
-- Update 警告！
-- 执行没有 WHERE 子句的 UPDATE 要慎重，再慎重。
-- 修改数据表中id为1到3的数据的值
update song set `name`='黑色幽默',album='Jay' where id BETWEEN 1 and 3;
update song set `name`='晴天',album='叶惠美' where id=2;
update song set `name`='退后',album='依然范特西' where id=3;

-- `查`数据库所有表
show tables;

-- 查看学生数据表结构
desc student;
desc teacher;
desc song;
desc test2;
describe test
-- show create table 表名(可以显示表的创建语句)
show create table test



-- 查看表数据
select * from song

select * from test where sex=2
select * from test where sex>2 and sex<8

-- 删除数据表
drop table test3

-- 查看数据库版本
select version();

-- '创建数据库'
create database test
-- '删除数据库'
drop database test