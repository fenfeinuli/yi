create table if not exists tb_account(
    `id` int unsigned auto_increment comment '用户id',
    `nickname` varchar(60) unique comment '昵称',
    `password` varchar(60) not null comment '密码',
    `gender` int unsigned default 0 comment '性别, 0男1女',
    `fullname` varchar(60) comment '全称',
    `image` varchar(1024) comment '头像',
    `created_time` timestamp not null default current_timestamp comment '创建时间',
    `last_updated_time` timestamp not null default current_timestamp on update current_timestamp comment '',
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

create table if not exists tb_phone(
    `id` int unsigned auto_increment comment '电话id',
    `aid` int unsigned unique comment 'tb_account 表主键',
    `phone` varchar(20) unique comment '电话号码',
    `area_code` varchar(60) default '+86' comment '区号',
    `created_time` timestamp not null default current_timestamp comment '创建时间',
    `last_updated_time` timestamp not null default current_timestamp on update current_timestamp comment '最后一次修改时间',
    primary key(id),
    foreign key (aid) references tb_account(id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
