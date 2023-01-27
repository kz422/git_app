import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_app/repositories/github_repository.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Repository...'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [BodyWidget()],
        ),
      ),
    );
  }
}

class BodyWidget extends ConsumerWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController textEditingController = TextEditingController();
    final dataList = ref.watch(snpProvider);
    final ctrl = ref.read(snpProvider.notifier);
    return dataList.when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
              ),
              SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.orange,
                  onPressed: () {
                    final text = textEditingController.text;
                    ctrl.fetchData(text);
                  },
                  child: const Text('search'),
                ),
              ),
              if (data != null)
                ...data.map((e) => Card(
                      child: ListTile(
                        title: Text(e.name ?? ''),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(e.owner!['avatar_url'] ?? ''),
                        ),
                      ),
                    ))
            ],
          ),
        );
      },
      error: (e, s) => Text(e.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
