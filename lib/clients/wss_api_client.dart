// ignore_for_file: depend_on_referenced_packages

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:wss_repository/requests/get_category_param.dart';
import 'package:wss_repository/requests/get_combo_param.dart';
import 'package:wss_repository/requests/get_feedback_group_param.dart';
import 'package:wss_repository/requests/get_feedback_param.dart';
import 'package:wss_repository/requests/get_task_count_param.dart';
import 'package:wss_repository/requests/get_task_param.dart';
import 'package:wss_repository/requests/get_voucher_param.dart';
import 'package:wss_repository/requests/post_comment_body.dart';
import 'package:wss_repository/requests/post_service_body.dart';
import 'package:wss_repository/requests/put_day_off_body.dart';
import 'package:wss_repository/requests/put_service_status_body.dart';
import 'package:wss_repository/requests/put_task_body.dart';
import 'package:wss_repository/requests/update_profile_body.dart';

import '../requests/get_day_off_param.dart';
import '../requests/get_service_param.dart';
import '../requests/post_day_off_body.dart';

part 'wss_api_client.g.dart';

@RestApi()
abstract class WssApiClient {
  factory WssApiClient(Dio dio, {String baseUrl}) = _WssApiClient;

  ///Account
  @PATCH("/Account/profile")
  Future updateProfile(@Body() UpdateProfileBody body);

  ///Auth
  @GET("/Auth/userInfo")
  Future getUserInfo(@Header('Authorization') String token);

  ///Category
  @GET("/Category")
  Future getCategories(@Queries() GetCategoryParam param);

  @GET("/Category/{id}")
  Future getCategory(@Path('id') String id);

  ///Combo
  @GET("/Combo")
  Future getCombos(@Queries() GetComboParam param);

  @GET("/Combo/{id}")
  Future getCombo(@Path('id') String id);

  //Comment
  @GET("/Comment/{id}")
  Future getComments(@Path('id') String id);

  @POST("/Comment")
  Future postComment(@Body() PostCommentBody body);

  @GET("/Comment/{id}")
  Future getComment(@Path('id') String id);

  ///DayOff
  @GET("/DayOff")
  Future getDayOffs(@Queries() GetDayOffParam param);

  @POST("/DayOff")
  Future postDayOff(@Body() PostDayOffBody body);

  @PUT("/DayOff/{id}")
  Future putDayOff(@Path('id') String id, @Body() PutDayOffBody body);

  @DELETE("/DayOff/{id}")
  Future deleteDayOff(@Path('id') String id);

  ///Feedback
  @GET("/Feedback")
  Future getFeedbacks(@Queries() GetFeedbackParam param);

  @GET("/Feedback/group")
  Future getFeedbacksGroupByRating(
      @Queries() GetFeedbackGroupByRatingParam param);

  @GET("/Feedback/{id}")
  Future getFeedback(@Path('id') String id);

  @GET("/Feedback/service/{serviceId}")
  Future getFeedbackByServiceId(@Path('serviceId') String serviceId);

  ///Service
  @GET("/Service")
  Future getServices(@Queries() GetServiceParam param);

  @POST("/Service")
  Future postService(@Body() PostServiceBody body);

  @GET("/Service/{id}")
  Future getService(@Path('id') String id);

  @PUT("/Service/{id}")
  Future putService(@Path('id') String id, @Body() PostServiceBody body);

  @POST("/Service/{id}")
  Future putServiceStatus(
      @Path('id') String id, @Body() PutServiceStatusBody body);

  ///Task
  @GET("/Task")
  Future getTasks(@Queries() GetTaskParam param);

  @GET("/Task/{id}")
  Future getTask(@Path('id') String id);

  @PUT("/Task/{id}/status")
  Future putTask(@Path('id') String id, @Body() PutTaskBody body);

  ///Statistic
  @GET("/Statistic/task-count")
  Future getStatisticTaskCount(@Queries() GetStatisticTaskCountParam param);

  ///File
  @POST('/File')
  Future uploadFiles(@Part() List<MultipartFile> files);

  ///Notification
  @POST("/Noti/subscribe")
  Future subscribeNotification(
    @Query('topic') String topic,
    @Body() List<String> data,
  );

  @POST("/Noti/unsubscribe")
  Future unsubscribeNotification(
    @Query('topic') String topic,
    @Body() List<String> data,
  );

  @GET('/Voucher')
  Future getVouchers(@Queries() GetVoucherParam param);

  @GET('/Voucher/code/{code}')
  Future getVoucherByCode(@Path('code') String code);
}
