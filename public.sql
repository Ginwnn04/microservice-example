/*
 Navicat Premium Data Transfer

 Source Server         : Postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 160004 (160004)
 Source Host           : localhost:5432
 Source Catalog        : microservice-db
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160004 (160004)
 File Encoding         : 65001

 Date: 19/05/2025 21:44:49
*/


-- ----------------------------
-- Sequence structure for school_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."school_id_seq";
CREATE SEQUENCE "public"."school_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS "public"."school";
CREATE TABLE "public"."school" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "school_name" varchar(255) COLLATE "pg_catalog"."default",
  "location" varchar(255) COLLATE "pg_catalog"."default",
  "principal_name" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (1, 'Trường THPT Lê Hồng Phong', 'Hà Nội', 'Nguyễn Văn An');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (2, 'Trường THCS Nguyễn Trãi', 'TP. Hồ Chí Minh', 'Trần Thị Mai');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (3, 'Trường Tiểu học Kim Đồng', 'Đà Nẵng', 'Phạm Quốc Bảo');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (4, 'Trường THPT Trần Phú', 'Hải Phòng', 'Lê Thị Hồng');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (5, 'Trường THCS Lý Tự Trọng', 'Cần Thơ', 'Nguyễn Hữu Tài');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (6, 'Trường Tiểu học Nguyễn Du', 'Huế', 'Võ Minh Châu');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (7, 'Trường THPT Nguyễn Huệ', 'Bình Dương', 'Đinh Văn Cường');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (8, 'Trường THCS Chu Văn An', 'Biên Hòa', 'Lê Hoàng Nam');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (9, 'Trường Tiểu học Bạch Đằng', 'Vũng Tàu', 'Nguyễn Thị Lan');
INSERT INTO "public"."school" OVERRIDING SYSTEM VALUE VALUES (10, 'Trường THPT Phan Bội Châu', 'Nghệ An', 'Trần Văn Quý');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."student";
CREATE TABLE "public"."student" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "age" int4,
  "gender" varchar(255) COLLATE "pg_catalog"."default",
  "school_id" int4
)
;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO "public"."student" VALUES ('id001', 'Nguyen Van A', 15, 'Male', 3);
INSERT INTO "public"."student" VALUES ('id002', 'Tran Thi B', 16, 'Female', 7);
INSERT INTO "public"."student" VALUES ('id003', 'Le Van C', 14, 'Male', 1);
INSERT INTO "public"."student" VALUES ('id004', 'Pham Thi D', 17, 'Female', 10);
INSERT INTO "public"."student" VALUES ('id005', 'Hoang Van E', 15, 'Male', 5);
INSERT INTO "public"."student" VALUES ('id006', 'Do Thi F', 16, 'Female', 8);
INSERT INTO "public"."student" VALUES ('id007', 'Vu Van G', 14, 'Male', 2);
INSERT INTO "public"."student" VALUES ('id008', 'Bui Thi H', 15, 'Female', 6);
INSERT INTO "public"."student" VALUES ('id009', 'Dao Van I', 17, 'Male', 9);
INSERT INTO "public"."student" VALUES ('id010', 'Mai Thi J', 16, 'Female', 4);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."school_id_seq"
OWNED BY "public"."school"."id";
SELECT setval('"public"."school_id_seq"', 10, true);

-- ----------------------------
-- Auto increment value for school
-- ----------------------------
SELECT setval('"public"."school_id_seq"', 10, true);

-- ----------------------------
-- Primary Key structure for table school
-- ----------------------------
ALTER TABLE "public"."school" ADD CONSTRAINT "school_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "public"."student" ADD CONSTRAINT "student_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table student
-- ----------------------------
ALTER TABLE "public"."student" ADD CONSTRAINT "FK_student_school" FOREIGN KEY ("school_id") REFERENCES "public"."school" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
