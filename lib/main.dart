import "package:flutter/material.dart";

void main() => runApp(const MaterialApp(home:page1()));

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('First page'),
          ),

        body: Center(
          child: ElevatedButton(
            child: Text("Next page"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> const page2()));
            },
          ),
        ),
        ),
      );
      }
}

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
        ),

      body: Center(
        child: ElevatedButton(
          child: Text('Go back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      ),
    );
  }
}
