.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$androidx$media3$exoplayer$video$PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0()V
    .locals 0

    return-void
.end method

.method private final run$androidx$media3$ui$PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "getFilesDir(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->start()Z

    :cond_0
    sget-object p0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->copilotAccessor$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/ailens/AiLensAccessor;

    check-cast v0, Lcom/motorola/camera/utility/ailens/DefaultAiLensAccessor;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ailens/DefaultAiLensAccessor;->isAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->initialize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    invoke-static {}, Lcom/motorola/camera/Util;->isVendorOrSampleModuleInstalled()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupAvailableCaptureRequestKeys()V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "SettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processCharacteristicsStage3 dur:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result p0

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "BoostManager"

    const-string/jumbo v0, "perfHintEnd"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    :cond_4
    return-void

    :pswitch_2
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "BoostManager"

    const-string v0, "boostCPU"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_boost()Z

    return-void

    :pswitch_3
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->close()V

    return-void

    :pswitch_4
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    :cond_6
    return-void

    :pswitch_5
    const-class p0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    monitor-enter p0

    :try_start_2
    sget v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->mRefCnt:I

    add-int/2addr v0, v3

    sput v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->mRefCnt:I

    if-ne v0, v3, :cond_7

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    invoke-virtual {v1}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_7
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_6
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$refreshMediaVolumes()V

    return-void

    :pswitch_7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_9
    invoke-static {}, Landroidx/compose/runtime/Latch;->getInstance()Landroidx/compose/runtime/Latch;

    move-result-object p0

    const-string v0, "com.motorola.camera5"

    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->getImagerTuningName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.motcameradesktop"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->cacheVersionForPackage([Ljava/lang/String;)V

    return-void

    :pswitch_a
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$297114qrXvjFethYPlUZXkdD0Ls()V

    return-void

    :pswitch_b
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$UrLxp4CTaXzaO0XkuwZ2vtZyZ_w()V

    return-void

    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$vBt94afmQ43v_NDTzpqvRCVtfmQ()V

    return-void

    :pswitch_d
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$R8W68wUBwSFJOARL6YgqeGw4B7A()V

    return-void

    :pswitch_e
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->initIfNot(Landroid/content/Context;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->loadAllModels(Z)V

    return-void

    :pswitch_f
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {p0, v2}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    return-void

    :pswitch_10
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    return-void

    :pswitch_11
    sget-object p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    sget-object p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->isEnabled:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_8
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_TRAINING_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->isEnabled:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkEnabled()V

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkTrainingModuleState()V

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->close()V

    return-void

    :pswitch_12
    sget p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    sget-object p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_9

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_9
    iput-object v2, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->checkSupported()V

    invoke-static {}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->close()V

    return-void

    :pswitch_13
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_IMAGE_PREFERENCE_SELECTOR_WINDOW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_14
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    return-void

    :pswitch_15
    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    monitor-enter p0

    :try_start_4
    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    if-nez v1, :cond_a

    monitor-exit p0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_0
    :cond_a
    :goto_3
    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    iget v4, v1, Lcom/google/common/base/Splitter;->limit:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v4, v3, :cond_b

    :try_start_5
    const-string v4, "SettingSoundPlayer"

    const-string/jumbo v5, "waiting for load to complete before unloading"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :cond_b
    :try_start_6
    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v1

    array-length v4, v1

    move v5, v0

    :goto_4
    if-ge v5, v4, :cond_c

    aget-object v6, v1, v5

    sget-object v7, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    iget-object v8, v7, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v8, [Landroid/media/SoundPool;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v8, v8, v0

    iget-object v7, v7, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v7, Ljava/util/EnumMap;

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/media/SoundPool;->unload(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    iget-object v4, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v4, [Landroid/media/SoundPool;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    iget-object v4, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v4, [Landroid/media/SoundPool;

    aput-object v2, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    iget-object v4, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v4, [Landroid/media/SoundPool;

    aput-object v2, v4, v3

    iget-object v3, v1, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumMap;

    invoke-virtual {v3}, Ljava/util/EnumMap;->clear()V

    iput v0, v1, Lcom/google/common/base/Splitter;->limit:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    sget-object p0, Lcom/google/common/base/Splitter;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sput-object v2, Lcom/google/common/base/Splitter;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    :goto_5
    return-void

    :goto_6
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :pswitch_16
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Splitter;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    monitor-enter v0

    :try_start_8
    iget v2, v0, Lcom/google/common/base/Splitter;->limit:I

    if-ne v2, v1, :cond_d

    monitor-exit v0

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_d
    iput v3, v0, Lcom/google/common/base/Splitter;->limit:I

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    sget-object v0, Lcom/google/common/base/Splitter;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    :goto_8
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :pswitch_17
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_IMAGE_PREFERENCE_SELECTOR_WINDOW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_18
    sget-object p0, Lcom/motorola/camera/CameraIntentReceiver;->VIBRATE_PATTERN:[J

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    aget v0, v0, v3

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/CameraIntentReceiver;->vibrateForQuickCapture(Landroid/content/Context;J)V

    :pswitch_19
    return-void

    :pswitch_1a
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$Zn0p6_k0LjCjixkl4ghWDXx9Xww()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
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
