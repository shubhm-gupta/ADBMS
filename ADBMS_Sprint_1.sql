create table Passenger (
passenger_id int auto_increment,
flight_id int,
first_name varchar (255) not null,
last_name varchar (255) not null,
pnr_no varchar (25) not null,
ticket_no varchar (255) unique,
ticket_class varchar (15) not null,
passenger_type varchar (15) not null,
seat_no varchar (5),
email varchar (100) not null,
phone_no varchar (20) not null,
meal_type varchar (10),	
primary key(passenger_id),
foreign key (flight_id) references Flight(flight_id)
);


create table Employee (
employee_id int auto_increment,
designation varchar(5) default 'GEN' not null check(user_type IN ('AAS', 'RP', 'ATC', 'AM', 'FM', 'GS', 'GEN')),  /*AAS corresponds to Airport_Admin_Support,  RP to Ramp planner, ATC to Air Traffic control, AM to Airport Manager, FM to Facilities Manager, GS to Ground Staff, GEN to General staff*/
emp_firstname varchar(255) not null,
emp_lastname varchar(255) not null,
street_address varchar(255) not null,
city varchar(50) not null,
state varchar(50) not null,
country varchar(50) not null,
zip_code varchar(15) not null,
email varchar(100) not null,
phone varchar(20) not null,
salary int not null,
primary key(employee_id)
);

INSERT INTO `Employee` (`designation`,`emp_firstname`,`emp_lastname`,`street_address`,`city`,`state`,`country`,`zip_code`,`email`,`phone`,`salary`) VALUES 
("FM","Phelan","Logan","257 Ligula. Ave","Gavle","Gävleborgs län","Honduras","9464 EC","sed.orci.lobortis@arcuiaculis.ca","1-778-840-4196",634546),
("AM","Lani","Rivas","Ap #614-6265 Sed, St.","Coevorden","Dr","Ecuador","171453","dictum@ullamcorper.org","1-452-491-1042",772656),
("AM","Sonya","Giles","P.O. Box 969, 3410 Et Rd.","Vienna","Vienna","Macao","761891","Donec@maurisut.edu","1-644-825-9839",662796),
("GEN","John","Shields","2016 Aenean Street","Lagos","Lagos","Bhutan","90-063","habitant@adipiscinglacus.org","1-432-741-5867",366189),
("RP","Ocean","Blevins","8470 Non, St.","Auckland","North Island","Cuba","8671","Integer.eu@euismodestarcu.ca","1-877-864-0308",676768),
("AAS","Cleo","Black","6344 Ac Avenue","Annapolis","MD","Bahamas","09164","malesuada@nibhDonecest.ca","1-378-871-7333",922546),
("GS","Cameron","Savage","943-1891 Tortor, Street","Avesta","W","Heard Island and Mcdonald Islands","38938","nunc.ac.mattis@Nullafacilisis.edu","1-458-229-2485",694186),
("AAS","Axel","Kent","169-3867 Cras Avenue","Galmaarden","VB","Madagascar","44703","dui.Fusce.aliquam@vitaeodiosagittis.edu","1-635-554-6560",418884),
("ATC","Delilah","Rogers","775-5487 Adipiscing Av.","Shreveport","LA","Switzerland","4775","euismod.ac.fermentum@nullaat.edu","1-403-847-4925",926944),
("FM","Ursa","Pace","P.O. Box 445, 9972 Nunc Ave","Heredia","H","Marshall Islands","460255","mauris.aliquam@netuset.co.uk","1-452-923-5510",885434),
("ATC","Ulric","Wilkins","Ap #947-1275 Egestas. Ave","Göteborg","Västra Götalands län","Iran","68439","volutpat.nunc@sed.edu","1-202-620-4046",100059),
("AAS","Nomlanga","Valencia","Ap #266-9983 Interdum. Ave","Radicofani","TOS","Suriname","9742","lorem@metusurna.org","1-240-834-6216",952442),
("FM","Darrel","Merrill","P.O. Box 886, 1937 Erat St.","Noragugume","Sardegna","French Guiana","699981","feugiat.placerat@orciconsectetuer.org","1-322-257-5050",166849),
("AM","Hermione","Harding","358-5030 In Rd.","Hofors","Gävleborgs län","Korea, South","9256","pharetra.sed.hendrerit@liberoDonecconsectetuer.net","1-843-908-4802",291276),
("GS","Blair","Horton","P.O. Box 374, 4164 Orci, Ave","Siedlce","MA","Samoa","9851","nec.tellus.Nunc@magnisdisparturient.edu","1-398-549-1891",474792),
("AM","Channing","Fitzgerald","Ap #896-2369 Ligula. Street","Palencia","CL","Kyrgyzstan","33009-682","adipiscing@etmagnaPraesent.org","1-934-549-5972",527070),
("FM","Brody","Mitchell","Ap #896-6735 Interdum Av.","Montebello","QC","Italy","10507","molestie.Sed@at.ca","1-316-156-2026",978089),
("RP","Serena","Maynard","Ap #436-7221 Neque. Rd.","Zamosc","LU","Turkmenistan","V6S 9YI","nibh.Quisque.nonummy@vehiculaaliquetlibero.edu","1-115-316-5877",214410),
("GEN","Caryn","Benjamin","P.O. Box 524, 7544 Facilisi. St.","Timaru","South Island","Estonia","8734","tortor.dictum@mattisvelitjusto.edu","1-701-172-9456",604687),
("ATC","Igor","Norman","P.O. Box 998, 7457 Tortor, Street","Cinco Esquinas","SJ","Montenegro","24503-907","ipsum.primis.in@egestasnuncsed.edu","1-898-751-3504",794041);

Create table Flight(
flight_id int auto_increment,
airline_no varchar(255) not null,
airline_name varchar(255) not null,
source varchar(255) ,
destination varchar(255),
date date not null,
departure_time time,
arrival_time time,
gate_no varchar(5),
Terminal_no varchar(10),
Primary key (flight_id)
);

INSERT INTO `Flight` (`airline_name`,`airline_no`,`source`,`destination`,`date`,`departure_time`,`arrival_time`,`gate_no`,`terminal_no`) VALUES 
("Jet Blue","JB-123","San Antonio, TX","San Antonio, TX","2018-09-24","13:52:58","02:14:44","M3",3),
("Delta Air lines","DA-543","Charlotte, NC","New York City, NY","2018-10-04","21:15:26","04:35:07","F5",9),
("American Airlines","AA-334","Seattle, WA","Charlotte, WA","2019-08-05","12:21:43","16:11:36","T8",7),
("Jet Blue","JB-987","Charlotte, NC","Charlotte, NC","2018-04-12","22:22:42","12:24:03","J4",4),
("Jet Blue","JB-65","Dallas, TX","New York City, NY","2018-01-15","07:24:21","00:24:49","W3",4),
("Jet Blue","JB-77","San Antonio, TX","Boston, MA","2019-07-27","14:08:25","22:24:41","A9",1),
("Jet Blue","JB-387","Memphis, TN","Memphis, TN","2019-03-09","13:32:13","04:35:01","B4",1),
("American Airlines","AA-776","Philadelphia, PA","Charlotte, NC","2018-02-06","05:31:04","06:27:41","V3",7),
("Southwest Airlines","SA-678","Philadelphia, PA","Chicago, IL","2018-09-17","02:24:41","01:33:02","O3",3),
("Southwest Airlines","SA-621","Charlotte, NC","Boston, MA","2019-09-26","20:56:39","19:27:45","D2",3),
("American Airlines","AA-76","Chicago, IL","Philadelphia, PA","2018-01-27","07:31:51","09:04:16","W1",2),
("Delta Air lines","DA-53","Dallas, TX","Chicago, IL","2019-01-30","15:53:00","05:18:50","H4",4),
("Southwest Airlines","SA-21","Philadelphia, PA","Chicago, IL","2019-07-24","17:27:01","03:30:49","O4",8),
("American Airlines","AA-276","Dallas, TX","Memphis, TN","2019-02-08","16:45:22","03:54:49","Y1",4),
("Delta Air lines","DA-543","Memphis, TN","Boston, MA","2019-04-03","06:48:12","05:12:01","E2",6),
("American Airlines","AA-676","New York City, NY","Philadelphia, PA","2019-08-26","12:31:09","02:51:53","J0",5),
("Jet Blue","JB-327","New York City, NY","Seattle, WA","2018-10-30","00:04:55","12:38:59","X6",1),
("Jet Blue","JB-887","Memphis, TN","Charlotte, NC","2018-09-16","10:30:48","23:47:55","R2",5),
("American Airlines","AA-996","Charlotte, NC","Seattle, WA","2018-01-05","07:19:25","19:19:27","X5",9),
("Southwest Airlines","SA-241","Charlotte, NC","San Antonio, TX","2018-10-22","04:23:54","00:03:23","R3",1);

INSERT INTO `Passenger` (`passenger_id`,`flight_id`,`first_name`,`last_name`,`pnr_no`,`ticket_no`,`ticket_class`,`passenger_type`,`seat_no`,`email`,`phone_no`,`meal_type`) VALUES 
(1,1,"Britanni","Newman","639174/4320","32575185099"," Economy","Adult ","20F","auctor@velquamdignissim.co.uk","1-340-304-7191","non veg"),
(2,5,"Mark","Hurst","357249/6762","19278959499"," Economy","Adult ","33D","nibh@Proin.ca","1-564-921-3514","non veg"),
(3,8,"Steel","Spencer","203514/4886","29768257999"," Economy","Adult ","45A","dis.parturient.montes@Vestibulumuteros.org","1-511-183-3258","veg"),
(4,20,"Mallory","Lowe","517833/4388","36908559499","Business ","Adult ","10F","Donec@Nullasempertellus.co.uk","1-896-567-3069","veg"),
(5,18,"Maxwell","Savage","276013/0191","49490183799","Business "," Child","3D","quam@tinciduntnunc.ca","1-167-351-5067","veg"),
(6,3,"Kasper","Golden","798293/4502","29687507599"," Economy","Adult ","44C","nonummy.Fusce@ProinmiAliquam.ca","1-572-589-3195","veg"),
(7,6,"Jael","Watts","202747/0935","23212589299","Business "," Child","5D","eget.varius.ultrices@ullamcorpernisl.org","1-248-925-1718","veg"),
(8,13,"Jordan","Mccarthy","772054/8754","43684612399","Business "," Child","6E","gravida.sit@sedtortor.edu","1-808-997-4567","non veg"),
(9,12,"Illana","Christian","849925/4855","74761997099","Business "," Child","9D","semper.et.lacinia@nislelementum.org","1-191-284-3419","veg"),
(10,10,"Hashim","Mccarthy","207011/2293","37606143399"," Economy"," Child","24F","sapien@habitant.net","1-140-155-7403","veg"),
(11,15,"Allistair","Holmes","626900/7479","92313866799","Business ","Adult ","1A","purus.sapien@malesuada.com","1-507-449-8791","veg"),
(12,17,"Octavia","Skinner","508527/3620","60568784499","Business ","Adult ","4B","eros.Nam.consequat@fringillaeuismodenim.co.uk","1-531-953-1724","veg"),
(13,5,"Tucker","Pruitt","477363/2536","39366580599","Business "," Child","7C","nunc@nunc.net","1-450-621-5874","veg"),
(14,6,"Hyacinth","Stanton","384272/0728","71817178599"," Economy","Adult ","23C","erat@amalesuadaid.edu","1-176-878-4246","non veg"),
(15,16,"Marsden","Parker","157111/3305","20396488699"," Economy"," Child","49D","ligula.consectetuer.rhoncus@Utsemper.net","1-129-178-4022","veg"),
(16,20,"Leah","Harmon","082398/5528","76205561899"," Economy","Adult ","47E","orci.Donec@Mauris.edu","1-435-626-2187","non veg"),
(17,11,"Aristotle","Wright","433847/2204","53636944199","Business ","Adult ","4A","nibh.sit@Donec.com","1-468-815-6842","non veg"),
(18,16,"Jane","Marks","415897/1756","37456559999"," Economy","Adult ","41E","porta@temporbibendum.ca","1-212-381-3923","veg"),
(19,19,"Lacey","Cannon","804808/4654","55205206399","Business ","Adult ","2C","eros.nec@senectuset.co.uk","1-725-419-0174","veg"),
(20,14,"Emma","Chan","125505/5731","86885682399"," Economy","Adult ","65F","mauris.sagittis.placerat@magnaa.ca","1-842-311-8962","veg");

Create table Account (
emp_id int not null,
account_id int auto_increment,
username varchar(255) not null,
password varchar(20) not null,
primary key(account_id),
foreign key(emp_id) references Employee(employee_id)
);

INSERT into Account VALUES 
(5,1,'OCEAN123','DSDS2323'),
(6,2,'cleo222','dsdf355'),
(8,3,'axel8756','hjmgnm474'),
(12,4,'Noml5534','fcndfnj434'),
(18,5,'Serena','ldmfldlskfi34');


select * from Flight;