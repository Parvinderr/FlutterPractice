import 'package:flutter/material.dart';

class HomePageAnimation extends StatefulWidget {
  @override
  _HomePageAnimationState createState() => _HomePageAnimationState();
}

class _HomePageAnimationState extends State<HomePageAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context) {
    return HomePage(controller: _controller);
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    Key key,
    @required AnimationController controller,
  })  : animation = HomePageEnterAnimation(controller),
        super(key: key);
  final HomePageEnterAnimation animation;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
        animation: animation.controller,
        builder: (context, child) => _buildAnimation(context, child, size),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child, Size size) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 250,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              topBar(animation.barHeight.value),
              circle(
                size,
                animation.avatarSize.value,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Opacity(
                  opacity: animation.titleOpacity.value,
                  child: placeHolder(28, 150, Alignment.centerLeft)),
              SizedBox(
                height: 8,
              ),
              Opacity(
                  opacity: animation.textOpacity.value,
                  child:
                      placeHolder(310, double.infinity, Alignment.centerLeft)),
            ],
          ),
        ),
        // Opacity(
        //   opacity: animation.floatingButton.value,
        //   child: FloatingActionButton(
        //     child: Center(
        //       child: Icon(Icons.add),
        //     ),
        //     onPressed: () {},
        //   ),
        // ),
        Opacity(
          opacity: animation.floatingButton.value,
          child: Container(
            height: 70,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(tileMode: TileMode.repeated, colors: [
                  Colors.grey[200],
                  Colors.grey[400],
                ])),
            child: BottomAppBar(
              elevation: 10,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: CircularNotchedRectangle(),
              // color: Colors.grey.shade700,
              notchMargin: 11.0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.ac_unit,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.no_sim),
                    onPressed: () {},
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.youtube_searched_for,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container topBar(double height) {
    return Container(
      height: height,
      width: double.infinity,
      color: Colors.blue,
    );
  }

  Positioned circle(Size size, double animationValue) {
    return Positioned(
      top: 200,
      left: size.width / 2 - 50,
      child: Transform(
        transform: Matrix4.diagonal3Values(
          animationValue,
          animationValue,
          1.0,
        ),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue.shade700,
          ),
        ),
      ),
    );
  }

  Align placeHolder(double height, double width, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}

class HomePageEnterAnimation {
  HomePageEnterAnimation(this.controller)
      : barHeight = Tween<double>(begin: 0, end: 250).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0, 0.3, curve: Curves.easeIn),
          ),
        ),
        avatarSize = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.3, 0.6, curve: Curves.easeOut),
          ),
        ),
        titleOpacity = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.6,
              0.65,
              curve: Curves.easeIn,
            ),
          ),
        ),
        textOpacity = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.65, 0.80, curve: Curves.easeIn),
        )),
        floatingButton =
            Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.10, 0.97, curve: Curves.easeIn),
        ));
  final AnimationController controller;
  final Animation<double> barHeight;
  final Animation<double> avatarSize;
  final Animation<double> titleOpacity;
  final Animation<double> textOpacity;
  final Animation<double> floatingButton;
}
