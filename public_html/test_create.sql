-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:13:20.087




-- tables
-- Table TNhanVien
CREATE TABLE TNhanVien (
    Masv int    NOT NULL ,
    TenNV int    NOT NULL ,
    NgaySinh char(10)    NOT NULL ,
    GioiTinh varchar(255)    NOT NULL ,
    Email varchar(12)    NOT NULL ,
    MucLuong varchar(1000)    NOT NULL ,
    MaPhong blob    NOT NULL ,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (Masv)
);

-- Table TPhongBan
CREATE TABLE TPhongBan (
    MaPhong int    NOT NULL ,
    TenPhong varchar(255)    NOT NULL ,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  product_category_product (table: TNhanVien)


ALTER TABLE TNhanVien ADD CONSTRAINT product_category_product FOREIGN KEY product_category_product (TenNV)
    REFERENCES TPhongBan (MaPhong);



-- End of file.

