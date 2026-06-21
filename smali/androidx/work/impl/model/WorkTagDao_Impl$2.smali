.class public final Landroidx/work/impl/model/WorkTagDao_Impl$2;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p2, p0, Landroidx/work/impl/model/WorkTagDao_Impl$2;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x3

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    const/4 v0, 0x7

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x8

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x9

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v0, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v0, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(I)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xc

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xd

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xe

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xf

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v0, p2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v0, p2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->outOfQuotaPolicyToInt(I)I

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v0, p2, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v0, p2, Landroidx/work/impl/model/WorkSpec;->generation:I

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x14

    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v0, p2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v0, p2, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    const/16 v1, 0x17

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget v0, p2, Landroidx/work/Constraints;->requiredNetworkType:I

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(I)I

    move-result v0

    const/16 v1, 0x18

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v0, p2, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->fromNetworkRequest$work_runtime_release(Landroidx/work/impl/utils/NetworkRequestCompat;)[B

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    iget-boolean v0, p2, Landroidx/work/Constraints;->requiresCharging:Z

    const/16 v1, 0x1a

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v0, p2, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    const/16 v1, 0x1b

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v0, p2, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    const/16 v1, 0x1c

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v0, p2, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    const/16 v1, 0x1d

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x1e

    iget-wide v1, p2, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x1f

    iget-wide v1, p2, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p2, p2, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    move-result-object p2

    const/16 v0, 0x20

    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    const/16 p2, 0x21

    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object p0

    :pswitch_0
    const-string p0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    return-object p0

    :pswitch_1
    const-string p0, "UPDATE workspec SET output=? WHERE id=?"

    return-object p0

    :pswitch_2
    const-string p0, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    return-object p0

    :pswitch_3
    const-string p0, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    return-object p0

    :pswitch_4
    const-string p0, "UPDATE workspec SET state=? WHERE id=?"

    return-object p0

    :pswitch_5
    const-string p0, "DELETE FROM workspec WHERE id=?"

    return-object p0

    :pswitch_6
    const-string p0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_7
    const-string p0, "UPDATE workspec SET stop_reason=? WHERE id=?"

    return-object p0

    :pswitch_8
    const-string p0, "UPDATE workspec SET generation=generation+1 WHERE id=?"

    return-object p0

    :pswitch_9
    const-string p0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object p0

    :pswitch_a
    const-string p0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object p0

    :pswitch_b
    const-string p0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object p0

    :pswitch_c
    const-string p0, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    return-object p0

    :pswitch_d
    const-string p0, "UPDATE workspec SET next_schedule_time_override=? WHERE id=?"

    return-object p0

    :pswitch_e
    const-string p0, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    return-object p0

    :pswitch_f
    const-string p0, "DELETE FROM WorkProgress"

    return-object p0

    :pswitch_10
    const-string p0, "DELETE from WorkProgress where work_spec_id=?"

    return-object p0

    :pswitch_11
    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object p0

    :pswitch_12
    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?"

    return-object p0

    :pswitch_13
    const-string p0, "DELETE FROM worktag WHERE work_spec_id=?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
