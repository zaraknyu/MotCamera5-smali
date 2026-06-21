.class public final Lcom/tinder/StateMachine$Matcher$predicates$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/tinder/StateMachine$Matcher$predicates$1;->$r8$classId:I

    iput-object p2, p0, Lcom/tinder/StateMachine$Matcher$predicates$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 65

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/tinder/StateMachine$Matcher$predicates$1;->$r8$classId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v0, v0, Lcom/tinder/StateMachine$Matcher$predicates$1;->this$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    const-string v2, "db"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->rawWorkInfoDao()Lcom/google/android/gms/tasks/zzad;

    move-result-object v1

    check-cast v0, Landroidx/work/WorkQuery;

    const-string v5, "<this>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SELECT * FROM workspec"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const-string v11, ")"

    const/16 v12, 0xa

    const-string v13, " AND"

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/WorkInfo$State;

    invoke-static {v14}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, " WHERE state IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v9}, Landroidx/work/impl/utils/RawQueries;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v13

    goto :goto_1

    :cond_1
    const-string v0, " WHERE"

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/UUID;

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v12, " id IN ("

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v9}, Landroidx/work/impl/utils/RawQueries;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v13

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const-string v10, "))"

    if-nez v7, :cond_4

    const-string v7, " id IN (SELECT work_spec_id FROM worktag WHERE tag IN ("

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v9}, Landroidx/work/impl/utils/RawQueries;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_4
    move-object v13, v0

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, " id IN (SELECT work_spec_id FROM workname WHERE name IN ("

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v9}, Landroidx/work/impl/utils/RawQueries;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v0, ";"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "builder.toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v5, v0, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "output"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "initial_delay"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "interval_duration"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "flex_duration"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "run_attempt_count"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_policy"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_delay_duration"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_enqueue_time"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "period_count"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v3

    const-string v3, "generation"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "next_schedule_time_override"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 p0, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string/jumbo v2, "required_network_type"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string/jumbo v2, "required_network_request"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string/jumbo v2, "requires_charging"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string/jumbo v2, "requires_device_idle"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string/jumbo v2, "requires_battery_not_low"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string/jumbo v2, "requires_storage_not_low"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move/from16 v26, v4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    if-eqz v27, :cond_8

    move/from16 v27, v3

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    move/from16 v28, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_24

    :cond_6
    move/from16 v28, v15

    :goto_5
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move/from16 v3, v27

    move/from16 v15, v28

    goto :goto_4

    :cond_8
    move/from16 v27, v3

    move/from16 v28, v15

    const/4 v3, -0x1

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzad;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/tasks/zzad;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_24

    if-ne v0, v3, :cond_9

    const/16 v31, 0x0

    goto :goto_7

    :cond_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v31, v29

    :goto_7
    if-ne v6, v3, :cond_a

    const/16 v32, 0x0

    goto :goto_8

    :cond_a
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v29

    move-object/from16 v32, v29

    :goto_8
    if-ne v7, v3, :cond_b

    const/16 v33, 0x0

    goto :goto_9

    :cond_b
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    sget-object v30, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static/range {v29 .. v29}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v29

    move-object/from16 v33, v29

    :goto_9
    const-wide/16 v29, 0x0

    if-ne v8, v3, :cond_c

    move-wide/from16 v34, v29

    goto :goto_a

    :cond_c
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    :goto_a
    if-ne v9, v3, :cond_d

    move-wide/from16 v36, v29

    goto :goto_b

    :cond_d
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    :goto_b
    if-ne v10, v3, :cond_e

    move-wide/from16 v38, v29

    goto :goto_c

    :cond_e
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    :goto_c
    if-ne v11, v3, :cond_f

    const/16 v41, 0x0

    goto :goto_d

    :cond_f
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v41, v40

    :goto_d
    if-ne v12, v3, :cond_10

    const/16 v42, 0x0

    goto :goto_e

    :cond_10
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v40

    move/from16 v42, v40

    :goto_e
    if-ne v13, v3, :cond_11

    move-wide/from16 v43, v29

    goto :goto_f

    :cond_11
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    :goto_f
    if-ne v14, v3, :cond_12

    move-wide/from16 v45, v29

    :goto_10
    move/from16 v15, v28

    goto :goto_11

    :cond_12
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    goto :goto_10

    :goto_11
    if-ne v15, v3, :cond_13

    move/from16 v47, v27

    move/from16 v27, v6

    move/from16 v6, v47

    const/16 v47, 0x0

    goto :goto_12

    :cond_13
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v47, v27

    move/from16 v27, v6

    move/from16 v6, v47

    move/from16 v47, v40

    :goto_12
    if-ne v6, v3, :cond_14

    move/from16 v48, v26

    move/from16 v26, v6

    move/from16 v6, v48

    const/16 v48, 0x0

    goto :goto_13

    :cond_14
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v48, v26

    move/from16 v26, v6

    move/from16 v6, v48

    move/from16 v48, v40

    :goto_13
    if-ne v6, v3, :cond_15

    move/from16 v49, v6

    move/from16 v6, p1

    move/from16 p1, v49

    move-wide/from16 v49, v29

    goto :goto_14

    :cond_15
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move/from16 v64, v6

    move/from16 v6, p1

    move/from16 p1, v64

    :goto_14
    if-ne v6, v3, :cond_16

    move/from16 v51, v17

    move/from16 v17, v6

    move/from16 v6, v51

    const/16 v51, 0x0

    goto :goto_15

    :cond_16
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v51, v17

    move/from16 v17, v6

    move/from16 v6, v51

    move/from16 v51, v40

    :goto_15
    if-ne v6, v3, :cond_17

    move/from16 v54, v18

    move/from16 v18, v6

    move/from16 v6, v54

    const/16 v54, 0x0

    goto :goto_16

    :cond_17
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v40

    move/from16 v54, v18

    move/from16 v18, v6

    move/from16 v6, v54

    move/from16 v54, v40

    :goto_16
    if-ne v6, v3, :cond_18

    move/from16 v53, v19

    move/from16 v19, v6

    move/from16 v6, v53

    const/16 v53, 0x0

    goto :goto_17

    :cond_18
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroidx/work/impl/model/WorkTypeConverters;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    move-result-object v40

    move/from16 v53, v19

    move/from16 v19, v6

    move/from16 v6, v53

    move-object/from16 v53, v40

    :goto_17
    if-ne v6, v3, :cond_19

    move/from16 v55, v20

    move/from16 v20, v6

    move/from16 v6, v55

    const/16 v55, 0x0

    goto :goto_19

    :cond_19
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v40, :cond_1a

    move/from16 v40, v16

    goto :goto_18

    :cond_1a
    const/16 v40, 0x0

    :goto_18
    move/from16 v55, v20

    move/from16 v20, v6

    move/from16 v6, v55

    move/from16 v55, v40

    :goto_19
    if-ne v6, v3, :cond_1b

    move/from16 v56, v21

    move/from16 v21, v6

    move/from16 v6, v56

    const/16 v56, 0x0

    goto :goto_1b

    :cond_1b
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v40, :cond_1c

    move/from16 v40, v16

    goto :goto_1a

    :cond_1c
    const/16 v40, 0x0

    :goto_1a
    move/from16 v56, v21

    move/from16 v21, v6

    move/from16 v6, v56

    move/from16 v56, v40

    :goto_1b
    if-ne v6, v3, :cond_1d

    move/from16 v57, v22

    move/from16 v22, v6

    move/from16 v6, v57

    const/16 v57, 0x0

    goto :goto_1d

    :cond_1d
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v40, :cond_1e

    move/from16 v40, v16

    goto :goto_1c

    :cond_1e
    const/16 v40, 0x0

    :goto_1c
    move/from16 v57, v22

    move/from16 v22, v6

    move/from16 v6, v57

    move/from16 v57, v40

    :goto_1d
    if-ne v6, v3, :cond_1f

    move/from16 v58, v23

    move/from16 v23, v6

    move/from16 v6, v58

    const/16 v58, 0x0

    goto :goto_1f

    :cond_1f
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v40, :cond_20

    move/from16 v40, v16

    goto :goto_1e

    :cond_20
    const/16 v40, 0x0

    :goto_1e
    move/from16 v58, v23

    move/from16 v23, v6

    move/from16 v6, v58

    move/from16 v58, v40

    :goto_1f
    if-ne v6, v3, :cond_21

    move/from16 v59, v24

    move/from16 v24, v6

    move/from16 v6, v59

    move-wide/from16 v59, v29

    goto :goto_20

    :cond_21
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v59

    move/from16 v64, v24

    move/from16 v24, v6

    move/from16 v6, v64

    :goto_20
    if-ne v6, v3, :cond_22

    :goto_21
    move/from16 v61, v25

    move/from16 v25, v6

    move/from16 v6, v61

    move-wide/from16 v61, v29

    goto :goto_22

    :cond_22
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    goto :goto_21

    :goto_22
    if-ne v6, v3, :cond_23

    const/16 v63, 0x0

    goto :goto_23

    :cond_23
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v28

    move-object/from16 v63, v28

    :goto_23
    new-instance v52, Landroidx/work/Constraints;

    invoke-direct/range {v52 .. v63}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;IZZZZJJLjava/util/Set;)V

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v29, v2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v53, v2

    check-cast v53, Ljava/util/ArrayList;

    new-instance v30, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v40, v52

    move-object/from16 v52, v3

    invoke-direct/range {v30 .. v53}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJIIJILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v2, v26

    move/from16 v26, p1

    move/from16 p1, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v6

    move/from16 v6, v27

    move/from16 v27, v2

    move/from16 v28, v15

    move-object/from16 v2, v29

    const/4 v3, -0x1

    goto/16 :goto_6

    :cond_24
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "WORK_INFO_MAPPER.apply(d\u2026(querySpec.toRawQuery()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0

    :goto_24
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    check-cast v1, Ljava/lang/Throwable;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-object v5

    :pswitch_1
    check-cast v1, Landroidx/compose/ui/unit/Density;

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    return-object v5

    :pswitch_2
    check-cast v1, Landroidx/compose/ui/text/font/TypefaceRequest;

    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iget-object v4, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget v5, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    iget v6, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    iget-object v7, v1, Landroidx/compose/ui/text/font/TypefaceRequest;->resourceLoaderCacheKey:Ljava/lang/Object;

    new-instance v2, Landroidx/compose/ui/text/font/TypefaceRequest;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    return-object v0

    :pswitch_3
    move/from16 v16, v3

    check-cast v1, Ljava/util/List;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    iget v0, v0, Landroidx/compose/ui/semantics/Role;->value:I

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsConfiguration;I)V

    return-object v5

    :pswitch_5
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_25

    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_25
    return-object v5

    :pswitch_6
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    check-cast v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    iget-object v0, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_26

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v1

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v5

    :pswitch_7
    move/from16 v16, v3

    sget-object v1, Landroidx/compose/ui/platform/GlobalSnapshotManager;->sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v2, v16

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_27

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v0, v5}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object v5

    :pswitch_8
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    check-cast v0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    new-instance v1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    return-object v1

    :pswitch_9
    check-cast v1, Landroidx/compose/ui/Modifier$Element;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_a
    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tinder/StateMachine$Matcher;

    iget-object v0, v0, Lcom/tinder/StateMachine$Matcher;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
