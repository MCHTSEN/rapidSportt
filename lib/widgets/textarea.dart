import 'package:flutter/material.dart';

class NavigationTextArea extends StatefulWidget {
  const NavigationTextArea({super.key});

  @override
  State<NavigationTextArea> createState() => _NavigationTextAreaState();
}

class _NavigationTextAreaState extends State<NavigationTextArea> {
  bool isWidgetVisible = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Visibility(
        visible: isWidgetVisible,
        child: Stack(
          children: [
            Positioned(
              bottom: 80,
              right: 10,
              child: Material(
                type: MaterialType.card,
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: PopupMenuButton(
                  icon:  Icon(Icons.menu, color: Theme.of(context).primaryColorLight),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  offset: const Offset(0, -60),
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry>[
                      PopupMenuItem(
                        value: 'settings',
                        child: Text(
                          'Settings',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      PopupMenuItem(
                        value: 'history',
                        child: Text(
                          'History',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ];
                  },
                 
                  
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 80,
                child: Card(
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              TextField(
                                style:  TextStyle(
                                    color: Theme.of(context).primaryColorLight, fontSize: 18),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Where do you want to go?',
                                  hintStyle:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isWidgetVisible = false;
                                });
                              },
                              icon: const Icon(Icons.near_me),
                              color: Theme.of(context).primaryColorLight,
                              splashColor: Theme.of(context).primaryColorDark ,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
