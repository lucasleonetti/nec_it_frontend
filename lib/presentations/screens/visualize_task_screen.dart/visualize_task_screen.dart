import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nec_it_frontend/api/get_tasks/get_tasks_provider.dart';
import '../../../config/theme/app_theme.dart';

class VisualizeTaskScreen extends StatelessWidget {
  const VisualizeTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tareas'),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldState().openDrawer();
                },
                icon: const Icon(Icons.notifications))
          ],
        ),
        body: const _ColaboratorDashboard(),
        bottomNavigationBar: const _BottomNavigatorBar());
  }
}

class _ColaboratorDashboard extends ConsumerWidget {
  const _ColaboratorDashboard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksProvider = ref.watch(getTasksProvider);

    final pendingTasks = tasksProvider.whenData(
        (task) => task.where((task) => task.estado == 'Pendiente').toList());

    final completedTasks = tasksProvider.whenData(
        (task) => task.where((task) => task.estado == 'Completada').toList());

    return Scaffold(
      body: FadeInLeft(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Pendiente',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Completada',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Row(
                  children: [
                    // Muestra las tareas pendientes
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red.shade200,
                        ),
                        child: pendingTasks.when(
                          data: (tasks) => ListView.separated(
                            itemCount: tasks.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  '${tasks[index].descripcion}: ${tasks[index].destino}',
                                  softWrap: true,
                                  style: const TextStyle(fontSize: 12),
                                ),
                                leading: const Icon(Icons.pending_actions),
                                enableFeedback: true,
                                // otros detalles de la tarea...
                              );
                            },
                            separatorBuilder: (context, index) =>
                                Divider(color: Colors.blueGrey, endIndent: 12),
                          ),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          error: (err, stack) =>
                              const Center(child: Text('Ha ocurrido un error')),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    // Muestra las tareas completadas
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green.shade200,
                        ),
                        child: completedTasks.when(
                          data: (tasks) => ListView.separated(
                            itemCount: tasks.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  '${tasks[index].descripcion}: ${tasks[index].destino}',
                                  softWrap: true,
                                  style: const TextStyle(fontSize: 12),
                                ),
                                leading: const Icon(
                                    Icons.check_circle_outline_outlined),
                                enableFeedback: true,
                                // otros detalles de la tarea...
                              );
                            },
                            separatorBuilder: (context, index) =>
                                Divider(color: Colors.blueGrey, endIndent: 12),
                          ),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          error: (err, stack) =>
                              const Center(child: Text('Ha ocurrido un error')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(
        spacing: 30,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.assistant_rounded),
              label: const Text("Solicitar Asistencia")),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: double.infinity,
              child: Text("NEC IT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppTheme().getTheme().primaryColor)),
            ),
          )
        ],
      ),
    );
  }
}
