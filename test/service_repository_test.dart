// import 'package:flutter_test/flutter_test.dart';
// import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
// import 'package:wss_repository/entities/service.dart';
// import 'package:wss_repository/repositories/service_repository.dart';
// import 'package:wss_repository/requests/get_service_param.dart';
// import 'package:wss_repository/wss_repository.dart';

// import 'constants_test.dart';

// void main() {
//   group('ServiceRepository', () {
//     late ServiceRepository serviceRepository;
//     String idToTest = '55a4f9ed-6508-4f39-8b25-755dc78978aa';
//     // const String categoryToTestId = '6d3d13e2-b358-4351-86eb-05e138f7c55e';

//     setUp(() {
//       WssRepository.init(
//         baseUrl: ConstantsTest.baseUrl,
//         isShowDioLogger: true,
//         authConfig: AuthConfig(
//           accessToken: ConstantsTest.accessToken,
//         ),
//       );
//       serviceRepository = ServiceRepository();
//     });

//     test('should return a list of services', () async {
//       final services = await serviceRepository.getServices(
//         param: GetServiceParam(
//           priceTo: null,
//           priceFrom: null,
//           checkDate: null,
//           status: null,
//           pageSize: null,
//           page: null,
//           sortKey: null,
//           sortOrder: null,
//         ),
//       );
//       expect(services, isA<DataPagingListResponse<Service>>());
//       expect(services.data, isNotEmpty);
//     });

//     test(
//       'should return service by id',
//       () async {
//         final service = await serviceRepository.getService(id: idToTest);
//         expect(service, isA<Service>());
//         expect(service, isNotNull);
//       },
//     );
//   });
// }
