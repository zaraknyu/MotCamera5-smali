.class public final Lcom/motorola/camera/background/service/jms/JobMgrService;
.super Lcom/motorola/camera/background/common/ServiceBase;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/motorola/camera/background/service/jms/JobMgrService;",
        "Lcom/motorola/camera/background/common/ServiceBase;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "()V",
        "ProgressUpdates",
        "STATE",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBindRefCount:I

.field public mDefaultNotification:Ljava/lang/String;

.field public mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

.field public mNotificationBuilder:Landroid/app/Notification$Builder;

.field public final mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

.field public final mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

.field public final mProgressUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public restartedByAndroid:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/camera/background/common/ServiceBase;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    const/16 v0, 0x32

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mProgressUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->DEINITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrService;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    iput-boolean v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    return-void
.end method


# virtual methods
.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    return-object p0
.end method

.method public final internalStopSelf(Z)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    const/4 v3, 0x0

    const-string v4, "mImplIntf"

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->numPendingJobs()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "internalStopSelf() mBindRefCount="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forced="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", jobs remaining="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->deinitialize()V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->DEINITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    invoke-virtual {p1, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    iget-object p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mBinding:Landroid/os/Binder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getBaseContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrService;)V

    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mBinding:Landroid/os/Binder;

    const-string v1, "com.motorola.camera.background.service.jms.IJobMgrService"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/motorola/camera/background/service/jms/IJobMgrService;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/background/service/jms/IJobMgrService$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/background/service/jms/IJobMgrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    const v0, 0x7f120519

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const v0, 0x7f120118

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mDefaultNotification:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/shared/NotificationHelper;->buildCameraForegroundNotification(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mProgressUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->INITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->createBaseDir(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->cleanUp()Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_0
    const-string p0, "mImplIntf"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/background/common/ServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.motorola.camera5.EXTRA_KEEP_ALIVE_START"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "com.motorola.camera5.EXTRA_START_FOREGROUND"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v0

    :goto_3
    iput-boolean v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    iget-object v4, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    const-string p1, " startId="

    const-string v1, " keepAlive="

    const-string v5, "onStartCommand: flags="

    invoke-static {p2, p3, v5, p1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " hasIntent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    :cond_6
    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz p1, :cond_7

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x2

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    invoke-static {p0, v0, p2, p1, p3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_7
    iget p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return p0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->numPendingJobs()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->internalStopSelf(Z)V

    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    return p0

    :cond_1
    const-string p0, "mImplIntf"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final startForegroundService()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "mNotificationBuilder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const-string v1, "App not allowed to update service to foreground priority. Will continue as background service"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
