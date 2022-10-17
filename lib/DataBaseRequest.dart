///Запросы к БД
abstract class DataBaseRequest {
  static String deleteTable(String table) => 'DROP TABLE $table';

  static const String tableAddress = 'Address';
  static const String tableStore = 'Store';
  static const String tableCustomer = 'Customer';
  static const String tableEmployee = "Employee";
  static const String tableShop = "Shop";
  static const String tableFurniture = "Furniture";
  static const String tableCustomerOrder = "CustomerOrder";
  static const String tableOrderPosition = "OrderPosition";
  static const String tableDelivery = "Delivery";
  static const String tableDeliveryBonus = "DeliveryBonus";

  static const List<String> tableList = [
    tableAddress,
    tableStore,
    tableCustomer,
    tableEmployee,
    tableShop,
    tableFurniture,
    tableCustomerOrder,
    tableOrderPosition,
    tableDelivery,
    tableDeliveryBonus
  ];
  static const List<String> tableCreateList = [
    _createAddress,
    _createTableStore,
    _createTableCustomer,
    _createTableEmployee,
    _createTableShop,
    _createTableFurniture,
    _createTableCustomerOrder,
    _createTableOrderPosition,
    _createTableDeliveryBonus,
    _createTableDelivery
  ];
  static const String _createAddress = "create table Address("
      "id int primary key not null,"
      "country text,"
      "city text,"
      "street text,"
      "building text"
      ");";

  static const String _createTableStore = "create table Store("
      "id int primary key not null,"
      "capacity int,"
      "id_address int,"
      "foreign key (id_address) references Address(id)"
      ");";

  static const String _createTableCustomer = "create table Customer("
      "id int primary key not null,"
      "name text,"
      "phone text,"
      "email text,"
      "id_address int,"
      "foreign key (id_address) references Address(id)"
      ");";

  static const String _createTableEmployee = "create table Employee("
      "id int primary key not null,"
      "name text,"
      "position text,"
      "is_discharged boolean,"
      "salary decimal(38, 2)"
      ");";

  static const String _createTableShop = "create table Shop("
      "id int primary key not null,"
      "id_address int,"
      "id_employee int,"
      "foreign key (id_address) references Address(id),"
      "foreign key (id_employee) references Employee(id)"
      ");";

  static const String _createTableFurniture = "create table Furniture("
      "id int primary key not null,"
      "title text,"
      "description text,"
      "price decimal(38, 2),"
      "id_store int,"
      "foreign key (id_store) references Store(id)"
      ");";

  static const String _createTableCustomerOrder = "create table CustomerOrder("
      "id int primary key not null,"
      "price decimal(38, 2),"
      "date_at date,"
      "id_customer int,"
      "id_shop int,"
      "id_employee int,"
      "foreign key (id_Customer) references Customer(id),"
      "foreign key(id_employee) references Employee(id),"
      "foreign key (id_shop) references Shop(id)"
      ");";

  static const String _createTableOrderPosition = "create table OrderPosition("
      "id int primary key not null,"
      "id_furniture int,"
      "id_customer_order int,"
      "date_at date,"
      "foreign key (id_furniture) references Furniture(id),"
      "foreign key (id_customer_order) references CustomerOrder(id)"
      ");";

  static const String _createTableDelivery = "create table Delivery("
      "id int primary key not null,"
      "id_customer_order int,"
      "id_address int,"
      "date_at date,"
      "foreign key (id_customer_order) references CustomerOrder(id),"
      "foreign key (id_address) references Address(id)"
      ");";

  static const String _createTableDeliveryBonus = "create table DeliveryBonus("
      "id int primary key not null,"
      "id_employee int,"
      "id_customer_order int,"
      "bonus_size int,"
      "foreign key (id_employee) references Employee(id),"
      "foreign key (id_customer_order) references CustomerOrder(id)"
      ");";
}
