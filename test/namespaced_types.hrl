-ifdef(NAMESPACED_TYPES).
-type remote_dict() :: dict:dict().
-type remote_set() :: set:set().
-else.
-type remote_dict() :: dict().
-type remote_set() :: set().
-endif.
