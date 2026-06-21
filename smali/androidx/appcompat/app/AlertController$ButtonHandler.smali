.class public final Landroidx/appcompat/app/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mDialog:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    .line 6
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/instrumentreport/MeasureKpi;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/service/BgJobService;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v6, "task_id"

    const-string v0, "msg"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget v0, v2, Landroid/os/Message;->what:I

    if-eq v0, v7, :cond_0

    if-eq v0, v3, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/service/BgJobService;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "getData(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    const-class v3, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v1, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/service/BgJobService;

    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    iget-object v9, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/motorola/camera/service/BgJobService;->acknowledgeJob(Landroid/os/Message;Lcom/motorola/camera/background/common/TaskId;)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "action"

    invoke-virtual {v0, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v7, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    sget-object v9, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v9, v9, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v10, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v3, v7}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(ILcom/motorola/camera/service/BgJobService;Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget v3, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    const-string v3, "BgJobService"

    iget v7, v2, Landroid/os/Message;->what:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception while handling : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/service/BgJobService;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    const-string v3, "URI"

    invoke-virtual {v2, v3, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "FILE_NAME"

    invoke-virtual {v2, v3, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DATE_TYPE"

    invoke-virtual {v2, v5, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    const-string v3, "GLOBAL_UUID"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    invoke-virtual {v2, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    const-string v1, "ERROR_CASE"

    invoke-virtual {v2, v8, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    const-string v2, "getTaskID(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, v1, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    iget v1, v2, Landroid/os/Message;->what:I

    if-ne v1, v8, :cond_c

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "off"

    const-string v4, "on"

    const-string v5, "auto"

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v6, :cond_3

    move-object v9, v5

    goto :goto_3

    :cond_3
    if-ne v9, v8, :cond_4

    move-object v9, v4

    goto :goto_3

    :cond_4
    move-object v9, v2

    :goto_3
    iput-object v9, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mHdrSetting:Ljava/lang/String;

    if-ne v10, v6, :cond_5

    move-object v2, v5

    goto :goto_4

    :cond_5
    if-ne v10, v8, :cond_6

    move-object v2, v4

    goto :goto_4

    :cond_6
    if-ne v10, v7, :cond_7

    const-string/jumbo v2, "torch"

    :cond_7
    :goto_4
    iput-object v2, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mFlashSetting:Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mTtfSetting:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mPanoramaSetting:Z

    goto :goto_5

    :cond_8
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mPanoramaSetting:Z

    :goto_5
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mIsColdStart:Z

    iput-boolean v2, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mColdStart:Z

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v4, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mKPI:Lcom/motorola/camera/CameraKpi$KPI;

    if-ne v2, v4, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mModeSetting:I

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/lifecycle/LiveData$1;

    const/16 v4, 0x1b

    invoke-direct {v2, v4}, Landroidx/lifecycle/LiveData$1;-><init>(I)V

    iput-object v1, v2, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    new-instance v1, Lcom/google/android/play/core/splitcompat/zzc;

    invoke-direct {v1, v3}, Lcom/google/android/play/core/splitcompat/zzc;-><init>(I)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_b
    :try_start_1
    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_c
    return-void

    :pswitch_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v0, :cond_53

    iget-object v0, v1, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    if-eqz v0, :cond_52

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v3, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v2, :cond_d

    goto/16 :goto_28

    :cond_d
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto/16 :goto_28

    :cond_e
    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCancelled:Z

    if-eqz v3, :cond_f

    iget-boolean v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v1, :cond_54

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto/16 :goto_28

    :cond_f
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v5

    move v10, v8

    move v11, v10

    move v12, v11

    move v14, v12

    move v15, v14

    move/from16 v16, v15

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result v18

    if-eqz v18, :cond_11

    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mCreateRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_27

    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x2

    goto :goto_6

    :catch_2
    :cond_11
    :goto_7
    :try_start_4
    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_8

    :cond_12
    const/4 v6, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    move v6, v8

    :goto_9
    if-eqz v12, :cond_14

    move v12, v6

    :cond_14
    if-eqz v10, :cond_15

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mFullFrameRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    move v10, v7

    :cond_15
    if-eqz v11, :cond_1a

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mFullFrameRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v8

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    if-eqz v11, :cond_16

    iget-boolean v11, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-eqz v11, :cond_16

    iget-boolean v8, v8, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    if-eqz v8, :cond_16

    const/4 v11, 0x1

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    :goto_b
    const/4 v8, 0x1

    goto :goto_a

    :cond_17
    if-nez v11, :cond_19

    if-eqz v6, :cond_18

    goto :goto_c

    :cond_18
    const/4 v6, 0x0

    goto :goto_d

    :cond_19
    :goto_c
    const/4 v6, 0x1

    :goto_d
    move v11, v6

    :cond_1a
    if-eqz v14, :cond_1b

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result v6

    move v14, v6

    :cond_1b
    if-eqz v16, :cond_1e

    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->EXIF_JPEG_NOT_RECEIVED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v6, 0x0

    goto :goto_f

    :cond_1d
    :goto_e
    const/4 v6, 0x1

    :goto_f
    move/from16 v16, v6

    :cond_1e
    if-eqz v15, :cond_21

    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z

    if-nez v6, :cond_20

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    goto :goto_11

    :cond_20
    :goto_10
    const/4 v6, 0x1

    :goto_11
    move v15, v6

    :cond_21
    sget-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    if-eq v6, v7, :cond_22

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne v6, v7, :cond_23

    :cond_22
    sget-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_12

    :cond_23
    const/4 v5, 0x0

    goto :goto_13

    :cond_24
    :goto_12
    const/4 v5, 0x1

    :goto_13
    or-int/2addr v13, v5

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_25
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v10, :cond_26

    if-eqz v11, :cond_26

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    if-nez v3, :cond_26

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_26
    if-nez v12, :cond_2b

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_5
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mFullFrameRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_28
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    iget-boolean v8, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v8, :cond_28

    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v7, v8, v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    goto :goto_14

    :catchall_1
    move-exception v0

    goto :goto_15

    :cond_29
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_2a

    if-eqz v13, :cond_2a

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_2a
    if-nez v14, :cond_2c

    goto/16 :goto_28

    :goto_15
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_2b
    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isDeterminateFgProcessingShot:Z

    if-nez v3, :cond_2c

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_2c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_2d
    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_7
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mReprocRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_30

    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mReprocRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2f
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    if-eqz v5, :cond_2f

    iget-boolean v5, v9, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    goto :goto_16

    :catchall_2
    move-exception v0

    goto/16 :goto_26

    :cond_30
    if-nez v15, :cond_31

    const/4 v5, 0x0

    goto :goto_19

    :cond_31
    iget v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumFailures:I

    if-lez v8, :cond_32

    const/4 v8, 0x1

    goto :goto_17

    :cond_32
    const/4 v8, 0x0

    :goto_17
    or-int/2addr v6, v8

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mCreateRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_33
    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    if-eqz v5, :cond_33

    iget-boolean v5, v8, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mIsComplete:Z

    goto :goto_18

    :cond_34
    :goto_19
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v6, :cond_35

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_35
    if-eqz v14, :cond_36

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v7, 0xd

    invoke-direct {v4, v0, v2, v1, v7}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_36
    if-eqz v16, :cond_54

    if-eqz v5, :cond_54

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v3, :cond_54

    if-eqz v15, :cond_54

    if-eqz v6, :cond_37

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v4, "REPROCESS_FAILURE"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_37
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_38

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v1, :cond_38

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfSwJpegTimeSummationMap:Ljava/util/Map;

    iget v1, v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v3, "REPROCESS_FAILURE"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    new-instance v1, Ljava/util/LinkedHashMap;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_8
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mReprocRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v11

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mSoftJpegRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3a
    :goto_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_39

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v11}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v12

    if-eqz v12, :cond_3b

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_3b
    invoke-virtual {v11}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v12

    if-eqz v12, :cond_3c

    add-int/lit8 v7, v7, 0x1

    :cond_3c
    :goto_1b
    invoke-virtual {v1, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result v14

    if-nez v14, :cond_3a

    if-nez v12, :cond_3d

    new-instance v12, Landroid/util/Pair;

    iget v14, v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-direct {v12, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_3
    move-exception v0

    goto/16 :goto_24

    :cond_3d
    iget v14, v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lt v14, v15, :cond_3e

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroid/util/Pair;

    iget v14, v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-direct {v12, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_3e
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3f
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-gtz v6, :cond_41

    if-lez v7, :cond_40

    goto :goto_1c

    :cond_40
    const/4 v4, 0x0

    goto :goto_1d

    :cond_41
    :goto_1c
    const/4 v4, 0x1

    :goto_1d
    const-string v5, ""

    if-eqz v4, :cond_42

    sget-object v5, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_42
    add-int/2addr v6, v7

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v1, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    new-instance v9, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-eqz v8, :cond_43

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;

    const/4 v10, 0x2

    invoke-direct {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_43
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v9, v7

    const/4 v10, 0x0

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v12

    invoke-static {v12}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v11}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v13

    invoke-virtual {v11}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v14

    iget-object v15, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    move-object/from16 p0, v1

    const-string v1, "ALTERNATE_SHOT"

    invoke-virtual {v15, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v15, "UUID"

    invoke-virtual {v1, v15, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_44

    if-eqz v14, :cond_44

    add-int/lit8 v1, v10, 0x1

    move/from16 v21, v10

    move v10, v1

    :goto_1f
    move v1, v6

    move/from16 v6, v21

    goto :goto_20

    :cond_44
    if-eqz v13, :cond_45

    add-int/lit8 v1, v9, 0x1

    move/from16 v21, v9

    move v9, v1

    goto :goto_1f

    :cond_45
    if-lez v7, :cond_46

    iget-object v1, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v13, "ANALYTICS_COMPOSITION_TRIGGERED"

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_46
    add-int/lit8 v1, v6, 0x1

    :goto_20
    iget-object v13, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "alternate_shot_index_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v13, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v6, v13, :cond_47

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPhotoSolidDataManager:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-wide v13, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v15, v15, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 p1, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    sub-long v13, v15, v13

    iget-object v1, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v1, v6, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_21

    :cond_47
    move/from16 p1, v1

    :cond_48
    :goto_21
    iget-boolean v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    iput-boolean v1, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v1, :cond_49

    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-eqz v6, :cond_49

    const/4 v6, 0x1

    goto :goto_22

    :cond_49
    const/4 v6, 0x0

    :goto_22
    iput-boolean v6, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessInForeground:Z

    sget-boolean v6, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v6, :cond_4a

    if-eqz v1, :cond_4a

    iget-boolean v1, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4a
    invoke-static {v12, v11}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;

    const/4 v14, 0x1

    invoke-direct {v6, v0, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;I)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4b
    move-object/from16 v1, p0

    move/from16 v6, p1

    goto/16 :goto_1e

    :cond_4c
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_3
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    :try_start_9
    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_23

    :goto_24
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :cond_4d
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->discardReceivedImages(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_4e
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v1

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onJobCompleted(I)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/16 v20, 0x1

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v10, 0x2

    invoke-direct {v5, v3, v1, v10}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_4f
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    const-class v3, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v3

    :try_start_b
    sget-object v4, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v4, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    monitor-exit v3

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_50
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_25

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_51
    :goto_25
    const-string v0, "McfCaptureRequestRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Capture time:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sceneMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :goto_26
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    :goto_27
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v0

    :cond_52
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string v0, "McfCaptureRequestRunnable"

    const-string v1, "Missing McfCaptureRequestRunnable object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_53
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string v0, "McfCaptureRequestRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Message obj is not a SequenceIdentifier "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_54
    :goto_28
    return-void

    :pswitch_2
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x3

    if-eq v0, v3, :cond_56

    const/4 v3, -0x2

    if-eq v0, v3, :cond_56

    const/4 v3, -0x1

    if-eq v0, v3, :cond_56

    const/4 v14, 0x1

    if-eq v0, v14, :cond_55

    goto :goto_29

    :cond_55
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_29

    :cond_56
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_29
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
