import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_viewer/domain/bloc/controller.dart';
import 'package:video_viewer/video_viewer.dart';

class IMDbClone extends StatefulWidget {
  const IMDbClone({Key? key}) : super(key: key);

  @override
  State<IMDbClone> createState() => _IMDbCloneState();
}

class _IMDbCloneState extends State<IMDbClone> {
  String? getactiveSourceNameName() => controller.activeSourceName;
  String? getActiveCaption() => controller.activeCaption;
  bool isFullScreen() => controller.isFullScreen;
  bool isBuffering() => controller.isBuffering;
  bool isPlaying() => controller.isPlaying;
  final VideoViewerController controller = VideoViewerController();
  @override
  Widget build(BuildContext context) {
    List<Cast> cast =[
      Cast(
        image: "https://m.media-amazon.com/images/M/MV5BNzk0MDQ5OTUxMV5BMl5BanBnXkFtZTcwMDM5ODk5Mg@@._V1_UY317_CR12,0,214,317_AL_.jpg",
        name: "Robert Pattinson",
        role: "Bruce Wayne"
      ),
      Cast(
          image: "https://m.media-amazon.com/images/M/MV5BM2NmMWViOTYtOGJhYi00MzU2LWI5ODYtOGJhYzhkMWViODY5XkEyXkFqcGdeQXVyNjk2NTA3MTc@._V1_UX214_CR0,0,214,317_AL_.jpg",
          name: "Zoë Kravitz",
          role: "Selina Kyle"
      ),
      Cast(
          image: "https://m.media-amazon.com/images/M/MV5BMjI1NDYyNzk4OV5BMl5BanBnXkFtZTgwNDAyMzI1MDI@._V1_UY317_CR131,0,214,317_AL_.jpg",
          name: "Jeffrey Wright",
          role: "Lt. James Gordon"
      ),
      Cast(
          image: "https://m.media-amazon.com/images/M/MV5BMTg4NzM5NDk0MV5BMl5BanBnXkFtZTcwNzAzMTUxNw@@._V1_UY317_CR3,0,214,317_AL_.jpg",
          name: "Colin Farrell",
          role: "Oz"
      ),

    ];
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        elevation: 0,
        title: const Text("The Batman"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
        ],
        backgroundColor: Colors.grey[850],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20,top: 20),
                        child: Text("The Batman",style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                        ),),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20,bottom: 20),
                        child: Text("2022     PG-13      2h 56m",style: TextStyle(color: Colors.grey),),
                      ),
                      VideoViewer(
                        controller: controller,
                        autoPlay: true,
                        source: {
                          "SubRip Text": VideoSource(
                            video: VideoPlayerController.network(
                                "https://firebasestorage.googleapis.com/v0/b/task-f2e3c.appspot.com/o/THE%20BATMAN%20%E2%80%93%20Main%20Trailer.mp4?alt=media&token=a8f6116e-6255-4b61-a4f1-d6eaf72a43ec"),
                          )
                        },
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image(image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.LZ2HhbilUFsfzsaaeStOXgHaK-?pid=ImgDet&rs=1",
                            ),
                              width: 100,
                              height: 180,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 17.0,left: 20.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                        child:  const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
                                          child: Text("Action",style: TextStyle(color: Colors.white),),
                                        ),
                                        decoration:BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.circular(3)
                                        ) ,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                        child:  const Padding(
                                          padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
                                          child: Text("Crime",style: TextStyle(color: Colors.white),),
                                        ),
                                        decoration:BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.circular(3)
                                        ) ,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                        child:  const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
                                          child: Text("Drama",style: TextStyle(color: Colors.white),),
                                        ),
                                        decoration:BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.circular(3)
                                        ) ,
                                      ),
                                    ),
                                    Container(
                                      child:  const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
                                        child: Text("Mystery",style: TextStyle(color: Colors.white),),
                                      ),
                                      decoration:BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.circular(3)
                                      ) ,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 20,left: 20.0,right: 10),
                                  child: Text("When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
                                  style: TextStyle(color: Colors.white),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: MaterialButton(onPressed:(){},color: Colors.amber,child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: const [
                              Icon(CupertinoIcons.bolt_circle,size: 30,),
                              SizedBox(width: 10,),
                              Text("See Showtimes & Tickets",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),)
                            ],
                          ),
                        ),),
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: MaterialButton(onPressed:(){},color: Colors.grey[800],child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: const [
                              Icon(Icons.add,size: 30,color: Colors.white,),
                              SizedBox(width: 10,),
                              Text("Add to Watchlist",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.white),)
                            ],
                          ),
                        ),),
                      ),
                      const SizedBox(height: 20,),
                      Container(color: Colors.grey,width: double.infinity,height: 0.5,),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Column(
                              children: [
                                const Icon(Icons.star,color: Colors.amber,size: 30,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Row(children: const [
                                    Text("8.3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    Text("/10",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),

                                  ],),
                                ),
                                const Text("330,267",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 12),),

                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5.0),
                                    child: Icon(Icons.star_border,color: Colors.blue,size: 30,),
                                  ),
                                  Text("Rate this",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.normal,fontSize: 15),),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Column(
                              children: [
                                Container(color: Colors.green,child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text("72",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
                                )),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text("Metascore",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
                                ),
                                const Text("68 critics",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 12),),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 20,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 3,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Text("Cast",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: InkWell(
                            child: Text("See all".toUpperCase(),style: TextStyle(color: Colors.blue,fontSize: 15),),
                          ),
                        )

                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text("top billed cast".toUpperCase(),style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 12,
                    ),),
                    const SizedBox(height: 15,),
                   SizedBox(
                     height: 220,
                     child: ListView.separated(itemBuilder: (context,index)=>castItem(cast[index]),
                         separatorBuilder:(context,index)=>const SizedBox(width: 5,), itemCount: cast.length,
                       scrollDirection: Axis.horizontal,
                       shrinkWrap: true,
                     ),
                   ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Director",style: TextStyle(fontSize: 15,color: Colors.white),),
                    const SizedBox(height: 3,),
                    const Text("Matt Reeves",style: TextStyle(color: Colors.grey,fontSize: 12),),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Writers",style: TextStyle(fontSize: 15,color: Colors.white),),
                    const SizedBox(height: 3,),
                    const Text("Matt Reeves (written by), Peter Craig (written by), and others",style: TextStyle(color: Colors.grey,fontSize: 12),),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      child: Text("all cast & crew".toUpperCase(),style: const TextStyle(color: Colors.blue,fontSize: 15),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }

}
Widget castItem(Cast cast)=>
    Container(
      width: 110,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Image(image: NetworkImage(cast.image!),width: 120,height:150 ,fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
            child: Text(cast.name!,style: const TextStyle(color: Colors.white),),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Text(cast.role!,style: const TextStyle(color: Colors.grey,fontSize: 12),),
          ),

        ],
      ),
    );
class Cast{
  String? image;
  String? name;
  String? role;
  Cast({this.name,this.image,this.role});
}