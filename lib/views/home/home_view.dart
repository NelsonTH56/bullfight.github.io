import 'package:flutter/material.dart';
//import 'package:bullfight/widgets/navigation_bar/navigation_bar.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forum App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ForumHomePage(),
      debugShowCheckedModeBanner: false,  // Removes the debug banner for web
    );
  }
}

class ForumHomePage extends StatefulWidget {
  const ForumHomePage({super.key});

  @override
  _ForumHomePageState createState() => _ForumHomePageState();
}

class _ForumHomePageState extends State<ForumHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    DiscoverPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('SoVest'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality if needed
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // Height of the navigation bar
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Home Button
                ElevatedButton(
                  onPressed: () => _onItemTapped(0),
                  child: Text('Home'),
                ),
                // Discover Button
                ElevatedButton(
                  onPressed: () => _onItemTapped(1),
                  child: Text('Discover'),
                ),
                // Profile Button
                ElevatedButton(
                  onPressed: () => _onItemTapped(2),
                  child: Text('Profile'),
                ),
              ],
            ),
          ),
        ),
      ),
      body: _pages[_selectedIndex],  // Display selected page
    );
  }
}

// Home Page where the posts are displayed
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> posts = [];
  TextEditingController postController = TextEditingController();

  void addPost() {
    setState(() {
      posts.add(postController.text);
      postController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
         
          // New Post Section
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(8),
            ),
        
            child: Column(
              children: [
            

            
                TextField(
                  maxLength: 3,
                  controller: postController,
                  decoration: InputDecoration(
                    hintText: 'Write your post here...',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                ),



                SizedBox(height: 400),
                ElevatedButton(
                  onPressed: addPost,
                  child: Text('Submit Post'),
                ), 
              ],
            ),
            ),
        
          SizedBox(height: 20),
          // Displaying the list of posts
          if (posts.isEmpty)
            Center(child: Text('No posts yet. Start by creating one!')),

          // ListView that is properly scrollable without Expanded
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Text(posts[index]),
                    trailing: Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        posts.removeAt(index); // Remove post on tap
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Discover Page (Placeholder)
class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Discover New Topics', style: TextStyle(fontSize: 24)));
  }
}

// Profile Page (Placeholder)
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Your Profile', style: TextStyle(fontSize: 24)));
  }
}