import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.groups),),
              Tab(child:Text('Chats'),),
              Tab(child: Text('Updates'), ),
              Tab(child: Text('Calls') ,),
            ]),
            actions:  [
              const Icon(Icons.camera_alt_outlined),
             const  SizedBox(width: 20),
             const  Icon(Icons.search),
              const SizedBox(width: 20,),
              PopupMenuButton( icon: const Icon(Icons.more_horiz_outlined),
                      itemBuilder:(context)=>[
                        const PopupMenuItem(value:1,child: Text('New group')),
                       const  PopupMenuItem(value:1,child: Text('New broadcast')),
                        const PopupMenuItem(value:1,child: Text('Linked devices')),
                        const PopupMenuItem(value:1,child: Text('Starred messages')),
                       const  PopupMenuItem(value:1,child: Text('Settings')),
                      ]),

              const SizedBox(width: 20,),

            ],
          ),
          body: TabBarView(children:
              [
                Column(

                  children: [

                    Container(
                      height: 250,
                      width: 250,

                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://cdn-icons-png.flaticon.com/256/4406/4406177.png'),
                        )
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      child: const Text('Stay connected with a\n Community',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),

                    ),
                    const SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: 200,
                      child: const Text('Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you are added to will appear here',textAlign: TextAlign.center,style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      child:const  Center(child: Text('start your community')),
                    )
                  ],
                ),
                ListView.builder(
                  itemCount: 100,
                    itemBuilder: (context,index){
                    return const ListTile(
                      title: Text('shafaat Hussain'),
                      subtitle: Text('We are waiting for you since morning'),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      trailing:Text('10:10 AM') ,
                    );
                    }
                ),

                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index){
                      if(index/2==0) {
                        return Column(
                          children: [
                            
                            const ListTile(
                              title: Text('My Status',
                                style: TextStyle(color: Colors.black),),
                              subtitle: Text('Wedesday, 11:15 PM'),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                              trailing: Icon(Icons.more_vert),

                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('New Updates'),
                                )
                              ],
                            )
                          ],

                        );

                      }
                      else{
                        return  ListTile(
                          title: const Text('Junsun Borjan'
                            ),
                          subtitle:const  Text('Wedesday, 10:15 PM'),
                          leading:
                          Container(
                            decoration:BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green,width: 3,)
                            ) ,
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                          ),

                        );
                      }
                    },

                ),

        ListView.builder(
            itemCount: 100,
            itemBuilder: (context,index){
              return  ListTile(
                title: const Text('shafaat Hussain'),
                subtitle: Text(index/2==0?'you missed call':'call time 5:15 PM',style: const TextStyle(color: Colors.red),),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                trailing:Icon(index /2==0?Icons.call_sharp:Icons.video_call_outlined) ,
              );
            }
        ),
              ]

          ),
        ));
  }
}
