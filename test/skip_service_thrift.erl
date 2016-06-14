%%
%% Autogenerated by Thrift Compiler (0.9.3)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(skip_service_thrift).
-behaviour(thrift_service).


-include("skip_service_thrift.hrl").

-export([struct_info/1, function_info/2]).

struct_info(_) -> erlang:error(function_clause).
%%% interface
% add_one(This, Input)
function_info('add_one', params_type) ->
  {struct, [{1, i32}]}
;
function_info('add_one', reply_type) ->
  i32;
function_info('add_one', exceptions) ->
  {struct, []}
;
% sum_ints(This, Ints, Second)
function_info('sum_ints', params_type) ->
  {struct, [{1, {struct, {'skip_types', 'Container'}}},
          {2, i32}]}
;
function_info('sum_ints', reply_type) ->
  i32;
function_info('sum_ints', exceptions) ->
  {struct, []}
;
% echo(This, All_types)
function_info('echo', params_type) ->
  {struct, [{1, {struct, {'skip_types', 'AllTypes'}}}]}
;
function_info('echo', reply_type) ->
  {struct, {'skip_types', 'AllTypes'}};
function_info('echo', exceptions) ->
  {struct, []}
;
% throw_exception(This, Throw_type)
function_info('throw_exception', params_type) ->
  {struct, [{1, byte}]}
;
function_info('throw_exception', reply_type) ->
  i32;
function_info('throw_exception', exceptions) ->
  {struct, [{1, {struct, {'skip_types', 'SimpleException'}}},
          {2, {struct, {'skip_types', 'UnusedException'}}}]}
;
% wait(This, Milliseconds)
function_info('wait', params_type) ->
  {struct, [{1, i32}]}
;
function_info('wait', reply_type) ->
  {struct, []};
function_info('wait', exceptions) ->
  {struct, []}
;
% cast(This, Message)
function_info('cast', params_type) ->
  {struct, [{1, string}]}
;
function_info('cast', reply_type) ->
  oneway_void;
function_info('cast', exceptions) ->
  {struct, []}
;
% missing(This, Missing)
function_info('missing', params_type) ->
  {struct, [{1, {struct, {'skip_types', 'MissingFields'}}}]}
;
function_info('missing', reply_type) ->
  {struct, {'skip_types', 'MissingFields'}};
function_info('missing', exceptions) ->
  {struct, []}
;
function_info(_Func, _Info) -> erlang:error(function_clause).

