import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo/application/blocs/todo_impl/todo_impl_bloc.dart';
import 'package:todo/core/constants/enums/processing_status.dart';
import 'package:todo/data/project_response/project_response.dart';
import 'package:todo/data/task_response/task_response.dart';
import 'package:todo/domain/i_todoist_repository/i_todoist_repository.dart';
import 'package:todo/domain/models/custom_error/custom_error.dart';

import 'todo_impl_bloc_test.mocks.dart';

@GenerateMocks([TodoistRepository])
void main() {
  late MockTodoistRepository mockTodoistRepository;
  late TodoImplBloc todoImplBloc;

  setUp(() {
    mockTodoistRepository = MockTodoistRepository();
    todoImplBloc = TodoImplBloc(todoistRepository: mockTodoistRepository);
  });

  tearDown(() {
    todoImplBloc.close();
  });

  group('TodoImplBloc Tests', () {
    blocTest<TodoImplBloc, TodoImplState>(
      'emits [waiting, success] when AddProject is successful',
      build: () {
        when(mockTodoistRepository.addProject(
          requestId: anyNamed('requestId'),
          name: anyNamed('name'),
        )).thenAnswer((_) async => ProjectResponse.initial());
        return todoImplBloc;
      },
      act: (bloc) => bloc.add(const AddProject(
        requestId: '123',
        name: 'New Project',
      )),
      expect: () => [
        TodoImplState.initial()
            .copyWith(processingStatus: ProcessingStatus.waiting),
        TodoImplState.initial().copyWith(
          processingStatus: ProcessingStatus.success,
          currentProject: 'New Project',
        ),
      ],
    );

    blocTest<TodoImplBloc, TodoImplState>(
      'emits [waiting, error] when AddProject fails',
      build: () {
        when(mockTodoistRepository.addProject(
          requestId: anyNamed('requestId'),
          name: anyNamed('name'),
        )).thenThrow(
          const CustomError(
            errorMsg: 'Error adding project',
            code: '',
            plugin: '',
          ),
        );
        return todoImplBloc;
      },
      act: (bloc) => bloc.add(const AddProject(
        requestId: '123',
        name: 'New Project',
      )),
      expect: () => [
        TodoImplState.initial()
            .copyWith(processingStatus: ProcessingStatus.waiting),
        TodoImplState.initial().copyWith(
          processingStatus: ProcessingStatus.error,
          error:     const CustomError(
            errorMsg: 'Error adding project',
            code: '',
            plugin: '',
          ),
        ),
      ],
    );

    blocTest<TodoImplBloc, TodoImplState>(
      'emits [waiting, success] when AddTask is successful',
      build: () {
        when(mockTodoistRepository.addTask(
          requestId: anyNamed('requestId'),
          content: anyNamed('content'),
          projectId: anyNamed('projectId'),
        )).thenAnswer((_) async => TaskResponse.initial());
        return todoImplBloc;
      },
      act: (bloc) => bloc.add(const AddTask(
        requestId: '123',
        content: 'New Task',
        projectId: 'project123',
      )),
      expect: () => [
        TodoImplState.initial()
            .copyWith(processingStatus: ProcessingStatus.waiting),
        TodoImplState.initial()
            .copyWith(processingStatus: ProcessingStatus.success),
      ],
    );

    blocTest<TodoImplBloc, TodoImplState>(
      'emits [waiting, success] when RetrieveProjects is successful',
      build: () {
        when(mockTodoistRepository.retrieveProjects())
            .thenAnswer((_) async => [ProjectResponse.initial()]);
        return todoImplBloc;
      },
      act: (bloc) => bloc.add(const RetreiveProjects()),
      expect: () => [
        TodoImplState.initial()
            .copyWith(processingStatus: ProcessingStatus.waiting),
        TodoImplState.initial().copyWith(
          processingStatus: ProcessingStatus.success,
          projects: [ProjectResponse.initial()],
        ),
      ],
    );

    blocTest<TodoImplBloc, TodoImplState>(
      'emits [waiting, error] when RetrieveProjects fails',
      build: () {
        when(mockTodoistRepository.retrieveProjects()).thenThrow(
          const CustomError(
              errorMsg: 'Error fetching projects', code: '', plugin: ''),
        );
        return todoImplBloc;
      },
      act: (bloc) => bloc.add(const RetreiveProjects()),
      expect: () => [
        TodoImplState.initial()
            .copyWith(processingStatus: ProcessingStatus.waiting),
        TodoImplState.initial().copyWith(
          processingStatus: ProcessingStatus.error,
          error: const CustomError(
              errorMsg: 'Error fetching projects', code: '', plugin: ''),
        ),
      ],
    );

  });
}
