.class public final Landroidx/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaae;Landroidx/media3/extractor/mkv/Sniffer;)V
    .locals 0

    const/16 p1, 0x12

    iput p1, p0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method private final run$com$motorola$camera$SimStateReceiver$SimStateRunnable()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    const-string/jumbo v1, "ss"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LOADED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/CountryDetector;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    const-class p0, Lcom/motorola/camera/CountryDetector;

    monitor-enter p0

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.motorola.camera.country_iso"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/motorola/camera/SimStateReceiver;->enableReceiver(Landroid/content/Context;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private final run$com$motorola$camera$background$service$jms$JobMgrServiceImpl$WatchDogTask()V
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "JobMgrService: WatchDog triggered - killing JMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->internalStopSelf(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method private final run$com$motorola$camera$instrumentreport$MeasureKpi$KPIMeasurementRunnable()V
    .locals 12

    iget-object p0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "keytag"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyvalue"

    iget-wide v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "HAL_OPEN"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CAMERA_OPEN_TASK_RUNTIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ON_CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "STARTUP_PREVIEW_FRAME_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "START_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "START_TO_HAL_OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TOTAL_STARTUP_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TOTAL_COLD_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TOTAL_STARTUP_W_CAF_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "coldstart"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "coldstart"

    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mColdStart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_1
    const-string v1, "mode"

    iget v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mModeSetting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hdr"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mHdrSetting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flash"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mFlashSetting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "focus"

    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mTtfSetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "panorama"

    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mPanoramaSetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "keytype"

    const-string v2, "KPI"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "taglevel"

    sget-object v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiTagLevelMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "parenttag"

    sget-object v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiParentTagMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "camera"

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    const-string v1, "Exception getting DB connection:"

    const-string v2, "Error inserting data:"

    const-string v3, "keytag = \'"

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_3
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "keytag"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    sget-object v6, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->INSERTQUERY_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v11, "timestamp ASC"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    const-string v6, "_id=?"

    invoke-virtual {v4, v5, v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "events"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    if-eqz v1, :cond_7

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :goto_4
    if-eqz v1, :cond_6

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v3
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    :try_start_9
    const-string v1, "InstrumentReportDBAccessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :goto_7
    monitor-exit p0

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_a
    const-string v2, "InstrumentReportDBAccessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    :goto_8
    return-void

    :goto_9
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method private final run$com$motorola$camera$service$CameraForegroundServiceManager$SaveSessionPendingJobsRunnable()V
    .locals 7

    iget-object p0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object v2, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    sget-object v6, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object v6, v6, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsJobHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iput-object v1, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->run()V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/UIManager;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    iget v1, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    invoke-direct {v1}, Landroidx/lifecycle/LiveData$1;->run$com$motorola$camera$service$CameraForegroundServiceManager$SaveSessionPendingJobsRunnable()V

    return-void

    :pswitch_1
    invoke-direct {v1}, Landroidx/lifecycle/LiveData$1;->run$com$motorola$camera$instrumentreport$MeasureKpi$KPIMeasurementRunnable()V

    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-nez v0, :cond_0

    const-string v0, "Video session data is null"

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData$1;->stopRecording(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-nez v2, :cond_1

    const-string v0, "Next video data is null"

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData$1;->stopRecording(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object v8, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    iget-object v1, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iput-wide v3, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    :cond_2
    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f120155

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Error trying to finish last video file"

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData$1;->stopRecording(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;

    invoke-virtual {v0}, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;->query()V

    return-void

    :pswitch_4
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;->query()V

    return-void

    :pswitch_5
    invoke-direct {v1}, Landroidx/lifecycle/LiveData$1;->run$com$motorola$camera$background$service$jms$JobMgrServiceImpl$WatchDogTask()V

    return-void

    :pswitch_6
    invoke-direct {v1}, Landroidx/lifecycle/LiveData$1;->run$com$motorola$camera$SimStateReceiver$SimStateRunnable()V

    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_8
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacv;

    iput-boolean v9, v0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zacv;->continueSettlingToState(I)V

    goto :goto_1

    :cond_3
    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v2, v4, :cond_4

    iget v0, v0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_4
    :goto_1
    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v2, v0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/OnCanceledListener;

    invoke-interface {v0}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_a
    throw v8

    :pswitch_b
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zact;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Landroidx/profileinstaller/DeviceProfileWriter;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :pswitch_c
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabq;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void

    :pswitch_d
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabq;->zaH()V

    return-void

    :pswitch_e
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->guard:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    new-instance v2, Lcom/google/android/gms/tasks/zza;

    const/16 v3, 0x19

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    return-void

    :pswitch_f
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    iput-boolean v9, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mIsInGracePeriod:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->gcFragments()V

    return-void

    :pswitch_10
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    return-void

    :pswitch_11
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    return-void

    :pswitch_12
    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_13
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :pswitch_14
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    iget-object v1, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Landroidx/lifecycle/LiveData$1;

    iget-wide v4, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    iget-object v4, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_6

    iput-wide v2, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    goto :goto_3

    :cond_6
    iget-object v2, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_7
    :goto_2
    iput-wide v2, v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    :cond_8
    :goto_3
    return-void

    :pswitch_15
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;

    check-cast v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v2, v1

    :goto_4
    if-ge v9, v2, :cond_a

    aget-object v3, v1, v9

    invoke-virtual {v3, v7}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    iget-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-eqz v4, :cond_9

    iget-object v5, v3, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzad;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object v8, v3, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    iput-object v8, v3, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/Extractor;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroidx/media3/extractor/Extractor;->release()V

    iput-object v8, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    :cond_b
    iput-object v8, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    return-void

    :pswitch_16
    monitor-enter p0

    :try_start_4
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iput-boolean v9, v0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_c
    :goto_5
    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v2, v0, Landroidx/databinding/WeakListener;

    if-eqz v2, :cond_c

    check-cast v0, Landroidx/databinding/WeakListener;

    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->unregister()Z

    goto :goto_5

    :cond_d
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    sget-object v2, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroidx/databinding/ViewDataBinding$6;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_6

    :cond_e
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-boolean v1, v0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_6

    :cond_10
    iput-boolean v7, v0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    iput-boolean v9, v0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    :goto_6
    return-void

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :pswitch_17
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, v9}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void

    :pswitch_18
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/ListViewAutoScrollHelper;

    iget-object v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$1:Landroidx/appcompat/widget/DropDownListView;

    iget-object v7, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    iget-boolean v8, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    if-nez v8, :cond_11

    goto/16 :goto_8

    :cond_11
    iget-boolean v8, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    if-eqz v8, :cond_12

    iput-boolean v9, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v2, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iput-wide v10, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    :cond_12
    iget-wide v2, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_13

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v10, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v8, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v12, v8

    add-long/2addr v10, v12

    cmp-long v2, v2, v10

    if-lez v2, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v0}, Landroidx/core/widget/ListViewAutoScrollHelper;->shouldAnimate()Z

    move-result v2

    if-nez v2, :cond_14

    :goto_7
    iput-boolean v9, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    goto :goto_8

    :cond_14
    iget-boolean v2, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    if-eqz v2, :cond_15

    iput-boolean v9, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-wide v12, v10

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_15
    iget-wide v2, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_16

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v5

    const/high16 v6, -0x3f800000    # -4.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v5

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v5, v8

    add-float/2addr v5, v6

    iget-wide v8, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v8, v2, v8

    iput-wide v2, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v2, v8

    mul-float/2addr v2, v5

    iget v3, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v0, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_8
    return-void

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v11, v0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    if-eqz v11, :cond_1a

    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    move v9, v7

    :cond_17
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v9, :cond_18

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1a

    if-eq v0, v7, :cond_1a

    goto :goto_9

    :cond_18
    if-eq v0, v7, :cond_1a

    :goto_9
    const/4 v2, 0x7

    if-eq v0, v2, :cond_19

    const/16 v3, 0x9

    if-eq v0, v3, :cond_19

    move v12, v4

    goto :goto_a

    :cond_19
    move v12, v2

    :goto_a
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-wide v13, v10, Landroidx/compose/ui/platform/AndroidComposeView;->relayoutTime:J

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    :cond_1a
    return-void

    :pswitch_1a
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_1b
    return-void

    :pswitch_1b
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/DropDownListView;

    iput-object v8, v0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    return-void

    :pswitch_1c
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LiveData;

    iget-object v2, v0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v0, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LiveData;

    iget-object v0, v0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    iget-object v3, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/LiveData;

    sget-object v4, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-object v1, v1, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public stopRecording(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v0, "Stopped recording: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoStates"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f12017d

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
