import 'package:flutter/material.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 30),
          child: Image.asset(
            "assets/images/header_bg.png",
            width: double.infinity,
            height: 170,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Text(
                            "Radio",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Text(
                            "Reciters",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    onPageChanged: (int index) {
                      setState(() {});
                    },
                    controller: _pageController,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 12,
                          ),
                          itemBuilder: (context, index) {
                            return _radioWidget("Radio Ibrahim Al-Akdar");
                          },
                          itemCount: 20,
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 12,
                          ),
                          itemBuilder: (context, index) {
                            return _radioWidget("Ibrahim Al-Akdar");
                          },
                          itemCount: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _radioWidget(String name) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/reciters_bg.png",
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Text(
              "$name",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 20,
                  ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  size: 32,
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.play_arrow,
                  size: 32,
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.volume_down_sharp,
                  size: 32,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
