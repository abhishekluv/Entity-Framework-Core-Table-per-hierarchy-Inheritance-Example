# Entity Framework Core Table Per Hierarchy Inheritance (TPH).

With TPH strategy, Entity Framework Core will represent an object-oriented hierarchy in a single table that takes the name of the base class and includes a "discriminator" column to identify the specific type for each row. 

EF Core can map a .NET type hierarchy to a database. 

TPH allows us to write our .NET entities in code as usual, using base and derived types, and have EF Core seamlessly create the appropriate database schema, issue queries, etc. 

![](https://i.imgur.com/iUlg2QE.png)

![](https://i.imgur.com/uznuYns.png)

![](https://i.imgur.com/7nfkmvc.png)


One table is used to represent all classes in the hierarchy. 

A "discriminator" column is used to discriminate between differing types. When we try to insert a Car object in the database, EF Core will automatically set the Discriminator column value to Car. Similarly, for Motorcycle object the Discriminator column value will be Motorcycle. Data for all the model classes like Vehicle, Car and Motorcycle will be saved in one single table. 

![](https://i.imgur.com/SO8gXl4.png)

![](https://i.imgur.com/BnVRyQP.png)