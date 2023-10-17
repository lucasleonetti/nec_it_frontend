import 'package:go_router/go_router.dart';
import '../../presentations/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/home_screen', routes: [
  GoRoute(
      path: '/home_screen', builder: (context, state) => const HomeScreen()),
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
]);
