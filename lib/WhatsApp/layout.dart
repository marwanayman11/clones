import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WhatsAppLayout extends StatelessWidget {
  const WhatsAppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> users =[
      User(
        name: 'Wanda',
        image: 'https://th.bing.com/th/id/OIP.PnAr1_YKrXkhHuF5nVDV0QHaHa?pid=ImgDet&rs=1',
        date: '5/4/22',
        message: 'Hello there'
      ),
      User(
          name: 'Steve',
          image: 'https://blog.nimbleways.com/content/images/2019/11/Zou-1.png',
          date: '5/3/22',
          message: 'Hi'
      ),
      User(
          name: 'Tony',
          image: 'https://static.wixstatic.com/media/edb967_752a1a3626f841fda0a29208043e6dc7~mv2_d_2374_2374_s_2.jpg/v1/fill/w_292,h_292,al_c,q_80,usm_0.66_1.00_0.01/IMG_2815.jpg',
          date: '5/2/22',
          message: 'I will be there'
      ),
      User(
          name: 'Sam',
          image: 'https://i1.rgstatic.net/ii/profile.image/651617770696705-1532369191980_Q512/Daniel_Salinas6.jpg',
          date: '5/1/22',
          message: 'thank you'
      ),
      User(
          name: 'Scarlett',
          image: 'https://th.bing.com/th/id/R.883addfb12a2d53342c1318bb6bc3318?rik=sqVqr109iDXMkg&riu=http%3a%2f%2fwww.learnopencv.com%2fwp-content%2fuploads%2f2016%2f05%2faverage-woman-face.jpg&ehk=nu8aes4PyhTlx4Z2MHkmABTcO7k1akf%2f2KQtRA6H6uM%3d&risl=&pid=ImgRaw&r=0',
          date: '5/1/22',
          message: 'How are you ?'
      ),
      User(
          name: 'Laura',
          image: 'https://www.memoryannex.com/wp-content/uploads/2020/02/Andrea-768x768.jpg',
          date: '5/1/22',
          message: 'The project\'s deadline is tomorrow '
      ),
      User(
          name: 'Natasha',
          image: 'https://images.fastcompany.net/image/upload/w_596,c_limit,q_auto:best,f_auto/wp-cms/uploads/2019/02/5-create-fake-people-in-2-seconds-on-this-insane-site.jpg',
          date: '4/30/22',
          message: 'Nice to meet you'
      ),
      User(
          name: 'John',
          image: 'https://petapixel.com/assets/uploads/2017/11/fake4.jpg',
          date: '4/30/22',
          message: 'Hello'
      ),
      User(
          name: 'Pepper',
          image: 'https://th.bing.com/th/id/OIP.xXs8iOmNO8QNE8z5qrJLJgHaHa?pid=ImgDet&w=512&h=512&rs=1',
          date: '4/29/22',
          message: 'I will be there'
      ),

    ];
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(16, 29, 36,1),
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            labelColor:Color.fromRGBO(0, 150, 136,1) ,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color.fromRGBO(0, 150, 136,1),
            tabs: [
              SizedBox(child: Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Icon(Icons.camera_alt),
              )),
              SizedBox(width: 130,child: Text('CHATS',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
              SizedBox(width: 130,child: Text('STATUS',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold))),
              SizedBox(width: 130,child: Text('CALLS',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)))
            ],
          ),
          elevation: 0,
          title: const Text('WhatsApp',style: TextStyle(color: Colors.grey,fontSize: 25),),
          backgroundColor:const Color.fromRGBO(109, 126, 134,0.1),
          actions: [
            IconButton(onPressed:(){}, icon:const Icon(Icons.search,color: Colors.grey,)),
            IconButton(onPressed:(){}, icon:const Icon(Icons.more_vert,color: Colors.grey,)),
          ],
        ),
        body: TabBarView(children: [
          const SizedBox(),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ListView.separated(itemBuilder:(context,index)=>message(
                  name: users[index].name,
                  message: users[index].message,
                  date: users[index].date,
                  image: users[index].image
                ), separatorBuilder:(context,index)=>const SizedBox(height: 5,), itemCount: users.length),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0,right: 20),
                  child: FloatingActionButton(onPressed: (){},child: const Icon(Icons.chat),backgroundColor: const Color.fromRGBO(0, 150, 136,1) ,),
                )
              ],
            ),
          ),
          Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Stack(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:NetworkImage('https://th.bing.com/th/id/R.772dd9643e2d4dbf1bae82efb000ba64?rik=jdxM%2b9ZltFv8pA&pid=ImgRaw&r=0') ,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 9,
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 150, 136,1),
                      radius: 8,
                    ),
                    Icon(Icons.add,color: Colors.white,size: 15,)
                  ],
                  alignment: Alignment.bottomRight,
                ),
                title: const Text('My status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle: const Text('Tap to add status update',style: TextStyle(color: Colors.grey),),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Recent updates',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.green,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:NetworkImage('https://th.bing.com/th/id/OIP.9p5sI99IR9bwjAFPMbUL1gHaHa?pid=ImgDet&rs=1') ,
                    ),

                  ],
                ),
                title: const Text('Wanda',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle: const Text('Today, 9:35 PM',style: TextStyle(color: Colors.grey),),

              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Viewed updates',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.grey,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:NetworkImage('https://image.winudf.com/v2/image/Y29tLkJpYmxlUXVvdGVzTGl2ZVdhbGxwYXBlckFwcF9zY3JlZW5fM18xNTM3NzE4MDA4XzA5NA/screen-3.jpg?fakeurl=1&type=.jpg') ,
                    ),
                  ],
                ),
                title: const Text('Steve',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle: const Text('Today, 7:35 PM',style: TextStyle(color: Colors.grey),),

              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(onPressed: (){},child: const Icon(Icons.edit),backgroundColor: const Color.fromRGBO(109, 126, 134,0.1) ,mini: true,),
                const SizedBox(height: 15,),
                FloatingActionButton(onPressed: (){},child: const Icon(Icons.camera_alt),backgroundColor: const Color.fromRGBO(0, 150, 136,1) ,),
              ],
            ),
          ),
        ],
      ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0,right: 20),
                child: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add_call),backgroundColor: const Color.fromRGBO(0, 150, 136,1) ,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage:NetworkImage('https://th.bing.com/th/id/OIP.PnAr1_YKrXkhHuF5nVDV0QHaHa?pid=ImgDet&rs=1') ,
                      ),
                      title: const Text('Wanda',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      subtitle: Row(
                        children: const [
                          Icon(CupertinoIcons.arrow_up_right,color: Colors.green,size: 15,),
                          SizedBox(width: 5,),
                          Text('45 minutes ago',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                      trailing:const Icon(Icons.videocam,color: Color.fromRGBO(0, 150, 136,1)),
                    ),
                    const SizedBox(height: 5,),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage:NetworkImage('https://blog.nimbleways.com/content/images/2019/11/Zou-1.png') ,
                      ),
                      title: const Text('Steve',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      subtitle: Row(
                        children: const [
                          Icon(CupertinoIcons.arrow_down_left,color: Colors.red,size: 15,),
                          SizedBox(width: 5,),
                          Text('55 minutes ago',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                      trailing:const Icon(Icons.call,color: Color.fromRGBO(0, 150, 136,1)),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],)
      ),
    );
  }
}
class User {
  String? image;
  String? name;
  String? message;
  String? date;
  User({this.name,this.image,this.message,this.date});
}
Widget message({String? image,String? name,String? message,String? date})=>
    InkWell(
      onTap: (){},
      child: ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage:NetworkImage(image!) ,
        ),
        title: Text(name!,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        subtitle: Text(message!,style: const TextStyle(color: Colors.grey),),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Text(date!,style: const TextStyle(color: Colors.grey,fontSize: 12),),
        ),

      ),
    );
