import 'package:go_router/go_router.dart';
import '../../presentations/screens/screens.dart';
import '../../presentations/screens/visualize_task_screen.dart/visualize_task_screen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/responsable_dep_home_page',
      builder: (context, state) => const ResponsableDepHomePage()),
  GoRoute(
      path: '/colaborator_dashboard_screen',
      builder: (context, state) => const ColaboratorDashboardScreen()),
  GoRoute(
      path: '/assign_task_screen',
      builder: (context, state) => const AssignTaskScreen()),
  GoRoute(
      path: '/new_request_screen',
      builder: (context, state) => const NewRequestScreen()),
  GoRoute(
      path: '/received_request_screen',
      builder: (context, state) => const ReceivedRequestScreen()),
  GoRoute(
      path: '/sended_request_screen',
      builder: (context, state) => const SendedRequestScreen()),
  GoRoute(
      path: '/visualize_task_screen',
      builder: (context, state) => const VisualizeTaskScreen()),
]);
