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
        title: const Text('GitHubbbbbb'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [BodyWidget()],
          ),
        ),
      ),
    );
  }
}

class BodyWidget extends ConsumerWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataList = ref.watch(snpProvider);
    final ctrl = ref.read(snpProvider.notifier);
    return dataList.when(
      data: (data) {
        return Column(
          children: [
            TextField(
              onChanged: (v) {
                ctrl.fetchData(v);
              },
            ),
            if (data != null)
              ...data.map((e) => ListTile(
                    title: Text(e.name.toString()),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(e.owner['avatar_url']),
                    ),
                  ))
          ],
        );
      },
      error: (e, s) => Text(e.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
