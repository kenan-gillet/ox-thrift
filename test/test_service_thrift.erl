%%
%% Autogenerated by Thrift Compiler (0.10.0)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(test_service_thrift).
-behaviour(thrift_service).


-include("test_service_thrift.hrl").

-export([struct_info/1, function_info/2, function_names/0]).

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
  {struct, [{1, {struct, {'test_types', 'Container'}}},
          {2, i32}]}
;
function_info('sum_ints', reply_type) ->
  i32;
function_info('sum_ints', exceptions) ->
  {struct, []}
;
% echo(This, All_types)
function_info('echo', params_type) ->
  {struct, [{1, {struct, {'test_types', 'AllTypes'}}}]}
;
function_info('echo', reply_type) ->
  {struct, {'test_types', 'AllTypes'}};
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
  {struct, [{1, {struct, {'test_types', 'SimpleException'}}},
          {2, {struct, {'test_types', 'UnusedException'}}}]}
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
% put(This, Message)
function_info('put', params_type) ->
  {struct, [{1, string}]}
;
function_info('put', reply_type) ->
  oneway_void;
function_info('put', exceptions) ->
  {struct, []}
;
% get(This)
function_info('get', params_type) ->
  {struct, []}
;
function_info('get', reply_type) ->
  string;
function_info('get', exceptions) ->
  {struct, []}
;
% swapkv(This, Return_type, Input)
function_info('swapkv', params_type) ->
  {struct, [{1, i32},
          {2, {map, i32, string}}]}
;
function_info('swapkv', reply_type) ->
  {map, string, i32};
function_info('swapkv', exceptions) ->
  {struct, []}
;
% missing(This, Missing)
function_info('missing', params_type) ->
  {struct, [{1, {struct, {'test_types', 'MissingFields'}}}]}
;
function_info('missing', reply_type) ->
  {struct, {'test_types', 'MissingFields'}};
function_info('missing', exceptions) ->
  {struct, []}
;
function_info(_Func, _Info) -> erlang:error(function_clause).

function_names() -> 
  ['add_one', 'sum_ints', 'echo', 'throw_exception', 'wait', 'put', 'get', 'swapkv', 'missing'].

