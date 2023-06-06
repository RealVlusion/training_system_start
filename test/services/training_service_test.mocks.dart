// Mocks generated by Mockito 5.4.0 from annotations
// in web_application/test/services/training_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:firebase_core/firebase_core.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:web_application/services/training_application_data_model.dart'
    as _i7;
import 'package:web_application/services/training_data_model.dart' as _i5;
import 'package:web_application/services/training_planning_data_model.dart'
    as _i6;

import 'training_service_test.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseApp_0 extends _i1.SmartFake implements _i2.FirebaseApp {
  _FakeFirebaseApp_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MockDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMockDataSource extends _i1.Mock implements _i3.MockDataSource {
  MockMockDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseApp get firebaseApp => (super.noSuchMethod(
        Invocation.getter(#firebaseApp),
        returnValue: _FakeFirebaseApp_0(
          this,
          Invocation.getter(#firebaseApp),
        ),
      ) as _i2.FirebaseApp);
  @override
  _i4.Future<void> createTraining(_i5.TrainingDataModel? trainingDataModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #createTraining,
          [trainingDataModel],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> createTrainingPlanning(
          _i6.TrainingPlanningDataModel? trainingPlanningDataModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #createTrainingPlanning,
          [trainingPlanningDataModel],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<List<_i6.TrainingPlanningDataModel>>
      getAllTrainingPlanningDocuments() => (super.noSuchMethod(
            Invocation.method(
              #getAllTrainingPlanningDocuments,
              [],
            ),
            returnValue: _i4.Future<List<_i6.TrainingPlanningDataModel>>.value(
                <_i6.TrainingPlanningDataModel>[]),
          ) as _i4.Future<List<_i6.TrainingPlanningDataModel>>);
  @override
  _i4.Future<List<_i6.TrainingPlanningDataModel>> getAllTrainingApplications(
          String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllTrainingApplications,
          [userId],
        ),
        returnValue: _i4.Future<List<_i6.TrainingPlanningDataModel>>.value(
            <_i6.TrainingPlanningDataModel>[]),
      ) as _i4.Future<List<_i6.TrainingPlanningDataModel>>);
  @override
  _i4.Future<void> createTrainingApplication(
          _i7.TrainingApplicationDataModel? trainingApplicationDataModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #createTrainingApplication,
          [trainingApplicationDataModel],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<_i6.TrainingPlanningDataModel?> getTrainingById(
          String? trainingId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTrainingById,
          [trainingId],
        ),
        returnValue: _i4.Future<_i6.TrainingPlanningDataModel?>.value(),
      ) as _i4.Future<_i6.TrainingPlanningDataModel?>);
}