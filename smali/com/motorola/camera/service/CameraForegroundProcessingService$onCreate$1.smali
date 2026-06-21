.class public final Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    sget p1, Lcom/motorola/camera/service/CameraForegroundProcessingService;->$r8$clinit:I

    const-string p1, "getAbsolutePath(...)"

    const-string/jumbo v0, "postProcJni"

    const-string v1, "CameraForegroundProcessingService"

    const-string v2, "initializeJni, Initializing JNI interface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v7, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    const/4 v8, 0x2

    invoke-direct {v7, v8, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;-><init>(ILjava/lang/Object;)V

    iput-object v7, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jniClient:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    new-instance v7, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v5, v8, v9}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v7, v4, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->initialize(Ljava/lang/String;[B)I

    iget-object v4, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setCacheDir(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setFilesDir(Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    const-class p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter p1

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->createModelResourcesList(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v4, :cond_7

    invoke-virtual {v4, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setMlModelsList(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jniClient:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    if-eqz v4, :cond_5

    invoke-virtual {p1, v4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->addClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v10, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v10, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogDDFlag(I)I

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogADFlag(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz p0, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setDebugDumpFlags(IIII)I

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initializeJni, Jni Initialized: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_5
    const-string p0, "jniClient"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to initialize post processing for "

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
