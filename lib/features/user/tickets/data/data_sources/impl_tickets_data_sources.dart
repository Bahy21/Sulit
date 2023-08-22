
// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/tickets/data/data_sources/tickets_data_sources.dart';
import 'package:flutter_tdd/features/user/tickets/data/models/ticket_model/ticket_model.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/create_ticket_params.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TicketsDataSources)
class ImplTicketsDataSources extends TicketsDataSources{
  @override
  Future<Either<Failure, bool>> createTicket(CreateTicketParams params)async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.createTicket,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data)=> params.isSuccess(data),
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, List<TicketModel>>> getTickets(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.tickets ,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<TicketModel>.from(
        json.map(
              (e) => TicketModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"]["tickets"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<TicketModel>>().call(model);
  }

  @override
  Future<Either<Failure, TicketModel>> getTicketDetails(int param) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.ticketDetails(param) ,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => TicketModel.fromJson(json),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<TicketModel>().call(model);
  }
}