BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL,
	"action_time"	datetime NOT NULL,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	integer NOT NULL,
	"action_flag"	smallint unsigned NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_newuser" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"email"	varchar(100) NOT NULL,
	"pwd"	varchar(100) NOT NULL,
	"no"	varchar(100) NOT NULL,
	"pincode"	varchar(100) NOT NULL,
	"img"	varchar(100) NOT NULL,
	"address"	text NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
CREATE TABLE IF NOT EXISTS "crime_addnews" (
	"p_id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"date"	varchar(100) NOT NULL,
	"time"	varchar(100) NOT NULL,
	"place"	varchar(100) NOT NULL,
	"matter"	text NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addmissing" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"age"	varchar(100) NOT NULL,
	"sex"	varchar(100) NOT NULL,
	"place"	varchar(100) NOT NULL,
	"date"	varchar(100) NOT NULL,
	"cmp1"	text NOT NULL,
	"height"	text NOT NULL,
	"image"	varchar(100) NOT NULL,
	"case1"	text NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addwanted" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"age"	varchar(100) NOT NULL,
	"sex"	varchar(100) NOT NULL,
	"place"	varchar(100) NOT NULL,
	"date"	varchar(100) NOT NULL,
	"cmp1"	text NOT NULL,
	"height"	text NOT NULL,
	"image"	varchar(100) NOT NULL,
	"case1"	text NOT NULL,
	"type1"	varchar(500) NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addfir" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"fname"	varchar(100) NOT NULL,
	"sex"	varchar(100) NOT NULL,
	"place"	varchar(100) NOT NULL,
	"date"	varchar(100) NOT NULL,
	"time"	varchar(100) NOT NULL,
	"iproof"	text NOT NULL,
	"image"	varchar(100) NOT NULL,
	"case1"	text NOT NULL,
	"address"	varchar(100) NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addregister" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"name2"	varchar(100) NOT NULL,
	"sex"	varchar(100) NOT NULL,
	"type1"	varchar(100) NOT NULL,
	"occ"	varchar(100) NOT NULL,
	"image"	varchar(100) NOT NULL,
	"address"	varchar(100) NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addhistory" (
	"p_id"	integer NOT NULL,
	"p_no"	varchar(100) NOT NULL,
	"type1"	varchar(100) NOT NULL,
	"date"	varchar(100) NOT NULL,
	"place"	varchar(100) NOT NULL,
	"case1"	text NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addcom2" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"email"	varchar(100) NOT NULL,
	"no"	varchar(100) NOT NULL,
	"type1"	varchar(100) NOT NULL,
	"date"	varchar(100) NOT NULL,
	"case1"	text NOT NULL,
	"rpy"	text NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addcrime" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"email"	varchar(100) NOT NULL,
	"no"	varchar(100) NOT NULL,
	"suspect"	varchar(100) NOT NULL,
	"date"	varchar(100) NOT NULL,
	"case1"	text NOT NULL,
	"rpy"	text NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "crime_addmessage" (
	"p_id"	integer NOT NULL,
	"name"	varchar(100) NOT NULL,
	"email"	varchar(100) NOT NULL,
	"no"	varchar(100) NOT NULL,
	"type1"	varchar(100) NOT NULL,
	"msg"	text NOT NULL,
	"rpy"	text NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL,
	"name"	varchar(150) NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	integer NOT NULL,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"last_name"	varchar(150) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"first_name"	varchar(150) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "django_migrations" VALUES (1,'contenttypes','0001_initial','2019-04-25 22:13:36.077891');
INSERT INTO "django_migrations" VALUES (2,'auth','0001_initial','2019-04-25 22:13:36.311905');
INSERT INTO "django_migrations" VALUES (3,'admin','0001_initial','2019-04-25 22:13:36.520917');
INSERT INTO "django_migrations" VALUES (4,'admin','0002_logentry_remove_auto_add','2019-04-25 22:13:36.770931');
INSERT INTO "django_migrations" VALUES (5,'admin','0003_logentry_add_action_flag_choices','2019-04-25 22:13:37.003944');
INSERT INTO "django_migrations" VALUES (6,'contenttypes','0002_remove_content_type_name','2019-04-25 22:13:37.253958');
INSERT INTO "django_migrations" VALUES (7,'auth','0002_alter_permission_name_max_length','2019-04-25 22:13:37.512973');
INSERT INTO "django_migrations" VALUES (8,'auth','0003_alter_user_email_max_length','2019-04-25 22:13:37.739986');
INSERT INTO "django_migrations" VALUES (9,'auth','0004_alter_user_username_opts','2019-04-25 22:13:38.021002');
INSERT INTO "django_migrations" VALUES (10,'auth','0005_alter_user_last_login_null','2019-04-25 22:13:38.266016');
INSERT INTO "django_migrations" VALUES (11,'auth','0006_require_contenttypes_0002','2019-04-25 22:13:38.352021');
INSERT INTO "django_migrations" VALUES (12,'auth','0007_alter_validators_add_error_messages','2019-04-25 22:13:38.571034');
INSERT INTO "django_migrations" VALUES (13,'auth','0008_alter_user_username_max_length','2019-04-25 22:13:38.812048');
INSERT INTO "django_migrations" VALUES (14,'auth','0009_alter_user_last_name_max_length','2019-04-25 22:13:39.054061');
INSERT INTO "django_migrations" VALUES (15,'crime','0001_initial','2019-04-25 22:13:39.279074');
INSERT INTO "django_migrations" VALUES (16,'sessions','0001_initial','2019-04-25 22:13:39.479086');
INSERT INTO "django_migrations" VALUES (17,'crime','0002_addnews','2019-04-27 00:14:26.210883');
INSERT INTO "django_migrations" VALUES (18,'crime','0003_addmissing','2019-04-27 00:56:57.805826');
INSERT INTO "django_migrations" VALUES (19,'crime','0004_addwanted','2019-04-27 17:26:05.860792');
INSERT INTO "django_migrations" VALUES (20,'crime','0005_addfir','2019-04-27 19:24:48.221167');
INSERT INTO "django_migrations" VALUES (21,'crime','0006_addregister','2019-04-27 20:17:33.624218');
INSERT INTO "django_migrations" VALUES (22,'crime','0007_addhistory','2019-04-27 21:09:41.849142');
INSERT INTO "django_migrations" VALUES (23,'crime','0008_addcmp','2019-04-27 22:51:33.758883');
INSERT INTO "django_migrations" VALUES (24,'crime','0009_auto_20190427_1552','2019-04-27 22:52:51.898352');
INSERT INTO "django_migrations" VALUES (25,'crime','0010_auto_20190427_1556','2019-04-27 22:56:12.214810');
INSERT INTO "django_migrations" VALUES (26,'crime','0011_addcrime','2019-04-27 23:18:29.524300');
INSERT INTO "django_migrations" VALUES (27,'crime','0012_addmessage','2019-04-27 23:47:41.466505');
INSERT INTO "django_migrations" VALUES (28,'auth','0010_alter_group_name_max_length','2023-02-26 19:25:26.390428');
INSERT INTO "django_migrations" VALUES (29,'auth','0011_update_proxy_permissions','2023-02-26 19:25:26.390428');
INSERT INTO "django_migrations" VALUES (30,'auth','0012_alter_user_first_name_max_length','2023-02-26 19:25:26.409876');
INSERT INTO "django_admin_log" VALUES (1,'2019-04-27 17:35:14.453169','1','kamal','[{"changed": {"fields": ["name"]}}]',9,1,2);
INSERT INTO "django_admin_log" VALUES (2,'2019-04-27 18:17:57.750781','1','aman','[{"changed": {"fields": ["case1"]}}]',10,1,2);
INSERT INTO "django_content_type" VALUES (1,'crime','newuser');
INSERT INTO "django_content_type" VALUES (2,'admin','logentry');
INSERT INTO "django_content_type" VALUES (3,'auth','permission');
INSERT INTO "django_content_type" VALUES (4,'auth','group');
INSERT INTO "django_content_type" VALUES (5,'auth','user');
INSERT INTO "django_content_type" VALUES (6,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES (7,'sessions','session');
INSERT INTO "django_content_type" VALUES (8,'crime','addnews');
INSERT INTO "django_content_type" VALUES (9,'crime','addmissing');
INSERT INTO "django_content_type" VALUES (10,'crime','addwanted');
INSERT INTO "django_content_type" VALUES (11,'crime','addfir');
INSERT INTO "django_content_type" VALUES (12,'crime','addregister');
INSERT INTO "django_content_type" VALUES (13,'crime','addhistory');
INSERT INTO "django_content_type" VALUES (14,'crime','addcmp');
INSERT INTO "django_content_type" VALUES (15,'crime','addcomplaint');
INSERT INTO "django_content_type" VALUES (16,'crime','addcom2');
INSERT INTO "django_content_type" VALUES (17,'crime','addcrime');
INSERT INTO "django_content_type" VALUES (18,'crime','addmessage');
INSERT INTO "auth_permission" VALUES (1,1,'add_newuser','Can add newuser');
INSERT INTO "auth_permission" VALUES (2,1,'change_newuser','Can change newuser');
INSERT INTO "auth_permission" VALUES (3,1,'delete_newuser','Can delete newuser');
INSERT INTO "auth_permission" VALUES (4,1,'view_newuser','Can view newuser');
INSERT INTO "auth_permission" VALUES (5,2,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES (6,2,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES (7,2,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES (8,2,'view_logentry','Can view log entry');
INSERT INTO "auth_permission" VALUES (9,3,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES (10,3,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES (11,3,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES (12,3,'view_permission','Can view permission');
INSERT INTO "auth_permission" VALUES (13,4,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES (14,4,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES (15,4,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES (16,4,'view_group','Can view group');
INSERT INTO "auth_permission" VALUES (17,5,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES (18,5,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES (19,5,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES (20,5,'view_user','Can view user');
INSERT INTO "auth_permission" VALUES (21,6,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES (22,6,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES (23,6,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES (24,6,'view_contenttype','Can view content type');
INSERT INTO "auth_permission" VALUES (25,7,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES (26,7,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES (27,7,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES (28,7,'view_session','Can view session');
INSERT INTO "auth_permission" VALUES (29,8,'add_addnews','Can add addnews');
INSERT INTO "auth_permission" VALUES (30,8,'change_addnews','Can change addnews');
INSERT INTO "auth_permission" VALUES (31,8,'delete_addnews','Can delete addnews');
INSERT INTO "auth_permission" VALUES (32,8,'view_addnews','Can view addnews');
INSERT INTO "auth_permission" VALUES (33,9,'add_addmissing','Can add addmissing');
INSERT INTO "auth_permission" VALUES (34,9,'change_addmissing','Can change addmissing');
INSERT INTO "auth_permission" VALUES (35,9,'delete_addmissing','Can delete addmissing');
INSERT INTO "auth_permission" VALUES (36,9,'view_addmissing','Can view addmissing');
INSERT INTO "auth_permission" VALUES (37,10,'add_addwanted','Can add addwanted');
INSERT INTO "auth_permission" VALUES (38,10,'change_addwanted','Can change addwanted');
INSERT INTO "auth_permission" VALUES (39,10,'delete_addwanted','Can delete addwanted');
INSERT INTO "auth_permission" VALUES (40,10,'view_addwanted','Can view addwanted');
INSERT INTO "auth_permission" VALUES (41,11,'add_addfir','Can add addfir');
INSERT INTO "auth_permission" VALUES (42,11,'change_addfir','Can change addfir');
INSERT INTO "auth_permission" VALUES (43,11,'delete_addfir','Can delete addfir');
INSERT INTO "auth_permission" VALUES (44,11,'view_addfir','Can view addfir');
INSERT INTO "auth_permission" VALUES (45,12,'add_addregister','Can add addregister');
INSERT INTO "auth_permission" VALUES (46,12,'change_addregister','Can change addregister');
INSERT INTO "auth_permission" VALUES (47,12,'delete_addregister','Can delete addregister');
INSERT INTO "auth_permission" VALUES (48,12,'view_addregister','Can view addregister');
INSERT INTO "auth_permission" VALUES (49,13,'add_addhistory','Can add addhistory');
INSERT INTO "auth_permission" VALUES (50,13,'change_addhistory','Can change addhistory');
INSERT INTO "auth_permission" VALUES (51,13,'delete_addhistory','Can delete addhistory');
INSERT INTO "auth_permission" VALUES (52,13,'view_addhistory','Can view addhistory');
INSERT INTO "auth_permission" VALUES (53,14,'add_addcmp','Can add addcmp');
INSERT INTO "auth_permission" VALUES (54,14,'change_addcmp','Can change addcmp');
INSERT INTO "auth_permission" VALUES (55,14,'delete_addcmp','Can delete addcmp');
INSERT INTO "auth_permission" VALUES (56,14,'view_addcmp','Can view addcmp');
INSERT INTO "auth_permission" VALUES (57,15,'add_addcomplaint','Can add addcomplaint');
INSERT INTO "auth_permission" VALUES (58,15,'change_addcomplaint','Can change addcomplaint');
INSERT INTO "auth_permission" VALUES (59,15,'delete_addcomplaint','Can delete addcomplaint');
INSERT INTO "auth_permission" VALUES (60,15,'view_addcomplaint','Can view addcomplaint');
INSERT INTO "auth_permission" VALUES (61,16,'add_addcom2','Can add addcom2');
INSERT INTO "auth_permission" VALUES (62,16,'change_addcom2','Can change addcom2');
INSERT INTO "auth_permission" VALUES (63,16,'delete_addcom2','Can delete addcom2');
INSERT INTO "auth_permission" VALUES (64,16,'view_addcom2','Can view addcom2');
INSERT INTO "auth_permission" VALUES (65,17,'add_addcrime','Can add addcrime');
INSERT INTO "auth_permission" VALUES (66,17,'change_addcrime','Can change addcrime');
INSERT INTO "auth_permission" VALUES (67,17,'delete_addcrime','Can delete addcrime');
INSERT INTO "auth_permission" VALUES (68,17,'view_addcrime','Can view addcrime');
INSERT INTO "auth_permission" VALUES (69,18,'add_addmessage','Can add addmessage');
INSERT INTO "auth_permission" VALUES (70,18,'change_addmessage','Can change addmessage');
INSERT INTO "auth_permission" VALUES (71,18,'delete_addmessage','Can delete addmessage');
INSERT INTO "auth_permission" VALUES (72,18,'view_addmessage','Can view addmessage');
INSERT INTO "crime_newuser" VALUES (1,'kartik','aggarwalkartik002@gmail.com','kgarg','8699192345','135136','pictures/Lighthouse.jpg','ambala');
INSERT INTO "crime_newuser" VALUES (2,'Vinita Bajaj','bajajvinita39@gmail.com','vinita123','08699939411','144804','pictures/Intex_Cloud_3G_Candy2016-01-20-19-56-42.png','kapurthala
    
    ');
INSERT INTO "crime_newuser" VALUES (3,'Abhay Awasthi','sharrysingh915@gmail.com','ritu','2583693693','160011','pictures/WhatsApp_Image_2023-04-06_at_01.08.54.jpg','missing my friend');
INSERT INTO "django_session" VALUES ('707giffxzwpioszstwu6kurhuw24kzzt','NGYwZTUyNzQxNTM0NDM3NzRiNmFiNDdjYTVmN2U1YTIzZjViNzgzNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMjRhZTI4YWM3YjBmZmFhZDJlZTEyYjA3MDVjZjM3MWNkNDk1NWY3In0=','2019-05-14 16:10:07.347328');
INSERT INTO "django_session" VALUES ('aer1a86ana9zpfff14c7vmse0q44h0q7','NWZjNjU2OWRkYjE4Mjc5OWMyMDM1NWJlMjZiMzQzMTY0NGNhMTcyNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjhkYTg1MWJjMzE3MjBlZTI5YTgzYTE2NTFmMTlhNzc3Mzc5MTllIn0=','2019-05-15 20:45:37.551772');
INSERT INTO "django_session" VALUES ('ee47mkvw6op7e1zo1y12sxalwh26jfeu','NGZmYmM2MjZlN2E0YjRhMzE3YmIyODI4YzkzM2VlMTYxMDA0NjkzODp7ImVtYWlsIjoiYmFqYWp2aW5pdGEzOUBnbWFpbC5jb20iLCJhZG1pbiI6ImFkbWluQGdtYWlsLmNvbSJ9','2019-06-11 06:04:01.560785');
INSERT INTO "django_session" VALUES ('ucbcry6e6dhdyy6y3tdsdfghbgimb1rc','MTE1MTY2MjBjYjE5ZWJkZGM4OGUyM2UyOGEwOTU3MjUyM2ZmZWYyMTp7fQ==','2020-03-07 05:56:26.083400');
INSERT INTO "django_session" VALUES ('01ttt61e5lgwwq93n6yiojnfnwsp4vjo','eyJlbWFpbCI6InNoYXJyeXNpbmdoOTE1QGdtYWlsLmNvbSJ9:1pk8yX:_Y5Sh3g47gYPI17hzpwDrnpsm14puPkzWvURtdPLYjY','2023-04-19 19:39:21.759939');
INSERT INTO "crime_addnews" VALUES (2,'votting','2019-04-25','06:59','chandigarh','adsjkdhas daksdjak dasdkjdas daklsdjas daksdjas dasjdahsjkd ashdgas dasdghahsd asdhgasd asdhgahsd asdjhasjkdh');
INSERT INTO "crime_addnews" VALUES (3,'votting','2019-04-25','06:59','chandigarh','adsjkdhas daksdjak dasdkjdas daklsdjas daksdjas dasjdahsjkd ashdgas dasdghahsd asdhgasd asdhgahsd asdjhasjkdh');
INSERT INTO "crime_addmissing" VALUES (2,'simrat','25','female','chandigarh','2018-10-29','abc','5.7','missing/person_6.jpg','dahgshda sdjahsd asjdhas dajsd asjdas djash ddajshd dajsd adj ahgsd fas dahsd  dagsd dasghd adshg');
INSERT INTO "crime_addmissing" VALUES (4,'kanika','24','female','pathkot','2019-04-08','white','5','missing/2.jpg','asfghs fgegdhd gddh');
INSERT INTO "crime_addmissing" VALUES (5,'sarb','34','male','dehli','2019-03-12','black','6','missing/3.webp','ascdjh ghedh evdghjh ');
INSERT INTO "crime_addwanted" VALUES (2,'aman','25','male','sadsdasd','2019-05-02','dhagshj','4.6','missing/person_7.jpg','dasda sadasd dasjdh dajsdh djaksd dajksd djkash','murder');
INSERT INTO "crime_addwanted" VALUES (3,'ajay','29','male','dhags','2018-11-29','adhgshas','5.7','missing/person_8.jpg','dasdasd adhsgd ajlksdh adjhas dajsdh','djakhsd asjdha');
INSERT INTO "crime_addwanted" VALUES (4,'asgsdg','43','male','afgsd','2019-04-01','wedd','5.5','missing/5.jpg','dfgg cfhfc degcfvcfg','thief');
INSERT INTO "crime_addwanted" VALUES (5,'sahib','22','male','asr','2019-04-05','xccccvfcv','5.4','missing/6.jpg','csfxcjc  dxgev dgfgfd edgheed','xzcfcv');
INSERT INTO "crime_addwanted" VALUES (6,'kiran','23','female','chandigarh','2019-02-12','brown','5','missing/7.jpg','vdcfbvhfdbv  cvhfdg cfxsdgch ','vccvc');
INSERT INTO "crime_addwanted" VALUES (7,'abc','23','male','xyz','1996-02-07','fair','5.6''''','missing/person_2.jpg','he robbed a house and stole jewellery and many more valuables','robbery');
INSERT INTO "crime_addfir" VALUES (1,'kamal','abc','male','chandiagrh','2019-12-30','12:59','378126326781','fir/person_3.jpg','dasdasd asjdhas dak;lsda sdkajsd daksdja daksljd dalksjda','dadjsjsdah');
INSERT INTO "crime_addfir" VALUES (2,'rajt','ravi','male','bathinda','2019-03-05','11:59','adhar','fir/8.jpg','reyrytrtfgh xcvcbzc xcgzfc ','h.no 22 bathinda');
INSERT INTO "crime_addfir" VALUES (3,'tiger','cxgcvc','male','cfvfv','2019-01-08','21:38','vbfgb','fir/9.jpg','cfdgcvgh dghc xfdxhgs ','asr');
INSERT INTO "crime_addregister" VALUES (1,'AJAY','MOTO BHAIya','male','goli paan','teacher','register/person_2.jpg','ffdfsdf fsdhf fsjdfj fsjdkfhjk');
INSERT INTO "crime_addhistory" VALUES (1,'1234','murder','2019-04-25','chandigarh','dasdas dsadas sdaa dsad sadas asdda sdadsa');
INSERT INTO "crime_addcom2" VALUES (2,'kartik','aggarwalkartik002@gmail.com','8699192345','fsdfsdf','2019-05-16','fdsdfsd sadsda saddasd','asdasdas dsasdasd');
INSERT INTO "crime_addcom2" VALUES (4,'Vinita Bajaj','bajajvinita39@gmail.com','08699939411','sfgdgd','2019-05-16','sfssfggs','PENDING');
INSERT INTO "crime_addcom2" VALUES (5,'Abhay Awasthi','sharrysingh915@gmail.com','2583693693','2583693695','','chandigarh','PENDING');
INSERT INTO "crime_addcrime" VALUES (1,'kartik','aggarwalkartik002@gmail.com','8699192345','aman','2018-10-29','dajksda sdkajsd askdas dasjkd asdkasd asjkda daskldjdas kdlajsk','PENDING');
INSERT INTO "crime_addcrime" VALUES (2,'Vinita Bajaj','bajajvinita39@gmail.com','08699939411','abc','1988-02-08','assdddsss','PENDING');
INSERT INTO "crime_addmessage" VALUES (2,'kartik','aggarwalkartik002@gmail.com','8699192345','dffsdfsdf','fsdfsdfs','PENDING');
INSERT INTO "crime_addmessage" VALUES (3,'kartik','aggarwalkartik002@gmail.com','8699192345','fsdfs','dfsdfs sfdfsd dsffs fsddfs sdffsdf','dasdas asdas sadasda');
INSERT INTO "auth_user" VALUES (1,'helloworld','2019-04-25 22:16:17.866145',1,'crime','','crime@gmail.com',1,1,'2019-04-25 22:15:59.121073','');
INSERT INTO "auth_user" VALUES (2,'12345678','2019-05-01 19:48:52.882036',1,'crimefile','','crimefile@gmail.com',1,1,'2019-05-01 19:48:37.716169','');
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" (
	"user_id",
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" (
	"group_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" (
	"user_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"	DESC
);
CREATE INDEX IF NOT EXISTS "login" ON "auth_user" (
	"id"	DESC,
	"password"	ASC
);
CREATE INDEX IF NOT EXISTS "loginp" ON "auth_user" (
	"email"	DESC,
	"password"	ASC
);
COMMIT;
