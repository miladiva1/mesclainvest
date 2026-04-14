import 'package:cloud_functions/cloud_functions.dart';
import '../domain/startup.dart';

class StartupService {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  Future<List<Startup>> fetchStartups() async {
    final result = await _functions.httpsCallable('listStartups').call();
    final List data = result.data['data'];
    return data.map((item) => Startup.fromMap(Map<String, dynamic>.from(item))).toList();
  }
}