import 'package:equatable/equatable.dart';

class DashboardState extends Equatable{

  final bool isLoading;

  const DashboardState({
    required this.isLoading
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    isLoading
  ];

  factory DashboardState.init()=> const DashboardState(
      isLoading: false
  );

  DashboardState copyWith({
    bool? isLoading,
  })=>DashboardState(
      isLoading: isLoading ?? this.isLoading
  );


}