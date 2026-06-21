.class public final Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;

.field public final context:Landroid/content/Context;

.field public final eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;

    return-void
.end method


# virtual methods
.method public final schedule(Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object v4, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "jobscheduler"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    new-instance v5, Ljava/util/zip/Adler32;

    invoke-direct {v5}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v4, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/zip/Adler32;->update([B)V

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->priority:Lcom/google/android/datatransport/Priority;

    invoke-static {v6}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v4, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/zip/Adler32;->update([B)V

    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v8

    long-to-int v5, v8

    invoke-virtual {v3}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "TransportRuntime."

    const/4 v11, 0x1

    const-string v12, "JobInfoScheduler"

    const-string v13, "attemptNumber"

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/job/JobInfo;

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getId()I

    move-result v9

    if-ne v9, v5, :cond_1

    if-lt v14, v11, :cond_2

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upload for context "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already scheduled. Returning..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v8, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    invoke-virtual {v8}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {v6}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v14, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    invoke-virtual {v8, v14, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    const/4 v14, 0x0

    if-eqz v9, :cond_3

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_0

    :cond_3
    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v8, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v8, v5, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;

    move-object/from16 v17, v12

    invoke-virtual {v0, v6, v14, v15}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;->getScheduleDelay(Lcom/google/android/datatransport/Priority;J)J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    iget-object v11, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;->values:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    iget-object v11, v11, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;->flags:Ljava/util/Set;

    sget-object v12, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->NETWORK_UNMETERED:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x2

    invoke-virtual {v8, v12}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_1
    sget-object v12, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->DEVICE_CHARGING:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v8, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_5
    sget-object v12, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->DEVICE_IDLE:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v8, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    :cond_6
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v11, v13, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "backendName"

    invoke-virtual {v11, v12, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "priority"

    invoke-static {v6}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v12

    invoke-virtual {v11, v7, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v4, :cond_7

    const-string v7, "extras"

    const/4 v12, 0x0

    invoke-static {v4, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v8, v11}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v14, v15}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;->getScheduleDelay(Lcom/google/android/datatransport/Priority;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v4, v0, v9, v2}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
