import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("facebook", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
            color: Colors.grey,
          ),

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          )],
      ),
      body: ListView(
        children: [
          // post create
          Container(
            color: Colors.black,
            height: 120,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
               Expanded(
                 child:  Row(
                   children: [
                     Container(
                       width: 45,
                       height: 45,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage("assets/images/user_1.jpeg")
                         )
                       ),
                     ),
                     SizedBox(width: 10,),
                     Expanded(
                       child: Container(
                         height: 45,
                         padding: EdgeInsets.only(left: 15, right: 15),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(23),
                           border: Border.all(
                             width: 1,
                             color: Colors.grey.shade500
                           )
                         ),
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "What's on your mind?",
                             border: InputBorder.none,
                             hintStyle: TextStyle(color: Colors.grey.shade700)
                           ),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
                Expanded(
                  child:  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 14),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo, color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 14),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // post stories
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 200,
            color:  Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _makeStory(
                  stroryImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "UserFive"
                ),
                _makeStory(
                    stroryImage: "assets/images/story_1.jpeg",
                    userImage: "assets/images/user_1.jpeg",
                    userName: "UserOne"
                ),
                _makeStory(
                    stroryImage: "assets/images/story_2.jpeg",
                    userImage: "assets/images/user_2.jpeg",
                    userName: "UserTwo"
                ),
                _makeStory(
                    stroryImage: "assets/images/story_3.jpeg",
                    userImage: "assets/images/user_3.jpeg",
                    userName: "UserThree"
                ),
                _makeStory(
                    stroryImage: "assets/images/story_4.jpeg",
                    userImage: "assets/images/user_4.jpeg",
                    userName: "UserFour"
                ),
              ],
            ),
          ),

          //post feed
          _makeFeed(
            userName: "UserTwo",
            userImage: "assets/images/user_2.jpeg",
            feedTime: "1 hr ago",
            feedText: "All the Lorem Isum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/story_2.jpeg"
          ),
          _makeFeed(
              userName: "UserTwo",
              userImage: "assets/images/user_2.jpeg",
              feedTime: "1 hr ago",
              feedText: "All the Lorem Isum generators on the Internet tend to repeat predefined",
              feedImage: "assets/images/story_2.jpeg"
          ),
          _makeFeed(
              userName: "UserTwo",
              userImage: "assets/images/user_2.jpeg",
              feedTime: "1 hr ago",
              feedText: "All the Lorem Isum generators on the Internet tend to repeat predefined",
              feedImage: "assets/images/story_2.jpeg"
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget _makeFeed({required String userName, required String userImage, required String feedTime, required String feedText, required String feedImage}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                     children: [
                       Container(
                         width: 50,
                         height: 50,
                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                                 image: AssetImage(userImage),
                                 fit: BoxFit.cover
                             )
                         ),
                       ),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(userName, style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),),
                           SizedBox(height: 3,),
                           Text(feedTime, style: TextStyle(color: Colors.grey, fontSize: 15,),),
                         ],
                       ),
                     ],
                   ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey.shade600,)
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey, height: 1.5, letterSpacing: .7),),
              ],
            ),
          ),
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                        child: makeLove()
                    ),
                    SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget _makeStory({required String stroryImage, required String userImage, required String userName}) {
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(stroryImage),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                      image: AssetImage(userImage),
                    fit: BoxFit.cover
                  )
                ),
              ),
              
              Text(userName, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}




