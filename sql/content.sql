
create table if not exists tb_product(
    `id` int unsigned auto_increment comment '产品id',
    `name` varchar(60) not null comment '产品名称',
    `abstract` varchar(1024) not null comment '产品简介',
    `image` varchar(1024) not null comment '产品图标',
    `created_time` timestamp not null default current_timestamp comment '创建时间',
    `last_updated_time` timestamp not null default current_timestamp on update current_timestamp comment '最后一次修改时间',
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

create table if not exists tb_category(
    `id` int unsigned auto_increment comment '分类id',
    `name` varchar(60) unique comment '名称',
    `describe` varchar(255) comment '描述',
    `created_time` timestamp not null default current_timestamp comment '创建时间',
    `last_updated_time` timestamp not null default current_timestamp on update current_timestamp comment '最后一次修改时间',
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
