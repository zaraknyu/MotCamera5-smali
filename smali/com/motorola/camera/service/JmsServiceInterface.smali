.class public final Lcom/motorola/camera/service/JmsServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public jmsReady:Ljava/util/concurrent/CountDownLatch;

.field public final lock:Ljava/lang/Object;

.field public mBgBindPending:Z

.field public mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

.field public mBgServiceBound:Z

.field public final mBgServiceClientId:I

.field public final mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mExpeditedJobAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v0, "JmsServiceInterface"

    sput-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v0, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iput v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExpeditedJobAvailable:Z

    new-instance v0, Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/service/JmsServiceInterface$1;-><init>(Lcom/motorola/camera/service/JmsServiceInterface;)V

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    return-void
.end method

.method public static sendJobProcessingPaused(Z)V
    .locals 9

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p0, "Service is not bound, not sending pause message"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    xor-int/lit8 v1, p0, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mExpeditedJobAvailable:Z

    iget-object v0, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v3

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v4, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v7, Lcom/motorola/camera/background/common/msg/MsgType;->SUSPEND_PROCESSING:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v6, Lcom/motorola/camera/background/common/TaskId;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/motorola/camera/background/common/TaskId;-><init>(I)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    sget-object v5, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v3 .. v8}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Unable to send suspend/resume message"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v2, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;

    invoke-direct {v2, v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getExpeditedJobAvailableAndMarkUsed()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_BG_SERVICE_EXPEDITED_FIRST_JOB:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExpeditedJobAvailable:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExpeditedJobAvailable:Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final isServiceBounded()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startAndBindJMS(Z)Z
    .locals 8

    const-string/jumbo v0, "startAndBindJMS ignored, enabled = "

    iget-object v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupBGServiceProcessing()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v5, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    if-nez v5, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    const-class v4, Lcom/motorola/camera/background/service/jms/JobMgrService;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    const-string p1, "com.motorola.camera5.EXTRA_START_FOREGROUND"

    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-virtual {v2, p1, v3, v0, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v3

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " bounded = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v1

    return v3

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startAndBindJMSSync(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMS(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    const/16 p1, 0x1388

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string p1, "Unable to bind to JMS."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
