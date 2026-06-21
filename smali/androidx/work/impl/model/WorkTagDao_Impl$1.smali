.class public final Landroidx/work/impl/model/WorkTagDao_Impl$1;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p2, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;Ljava/lang/Object;)V
    .locals 4

    iget p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result p0

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p0, 0x4

    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {p0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    move-result-object p0

    const/4 v0, 0x5

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {p0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    move-result-object p0

    const/4 v0, 0x6

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    const/4 p0, 0x7

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x8

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x9

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(I)I

    move-result p0

    const/16 v0, 0xb

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xc

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xd

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xe

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xf

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    const/16 v0, 0x10

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->outOfQuotaPolicyToInt(I)I

    move-result p0

    const/16 v0, 0x11

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->generation:I

    int-to-long v0, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x14

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    const/16 v0, 0x17

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget p2, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(I)I

    move-result p2

    const/16 v0, 0x18

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p2, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->fromNetworkRequest$work_runtime_release(Landroidx/work/impl/utils/NetworkRequestCompat;)[B

    move-result-object p2

    const/16 v0, 0x19

    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    iget-boolean p2, p0, Landroidx/work/Constraints;->requiresCharging:Z

    const/16 v0, 0x1a

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p2, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    const/16 v0, 0x1b

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p2, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    const/16 v0, 0x1c

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p2, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    const/16 v0, 0x1d

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p2, 0x1e

    iget-wide v0, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p2, 0x1f

    iget-wide v0, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    move-result-object p0

    const/16 p2, 0x20

    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    return-void

    :pswitch_0
    check-cast p2, Landroidx/work/impl/model/WorkProgress;

    iget-object p0, p2, Landroidx/work/impl/model/WorkProgress;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkProgress;->progress:Landroidx/work/Data;

    sget-object p2, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {p0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    move-result-object p0

    invoke-interface {p1, v1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    return-void

    :pswitch_1
    check-cast p2, Landroidx/work/impl/model/WorkName;

    iget-object p0, p2, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p2, Landroidx/work/impl/model/SystemIdInfo;

    iget-object p0, p2, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget p0, p2, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_3
    check-cast p2, Landroidx/work/impl/model/Preference;

    iget-object p0, p2, Landroidx/work/impl/model/Preference;->key:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/Preference;->value:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_4
    check-cast p2, Landroidx/work/impl/model/Dependency;

    iget-object p0, p2, Landroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void

    :pswitch_5
    check-cast p2, Landroidx/work/impl/model/WorkTag;

    iget-object p0, p2, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_0
    const-string p0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object p0

    :pswitch_1
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_2
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object p0

    :pswitch_3
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object p0

    :pswitch_4
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object p0

    :pswitch_5
    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final insert(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->bind(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;Ljava/lang/Object;)V

    iget-object p1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw p1
.end method
