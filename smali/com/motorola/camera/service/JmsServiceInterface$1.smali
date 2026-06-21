.class public final Lcom/motorola/camera/service/JmsServiceInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/service/JmsServiceInterface;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/JmsServiceInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v1, v0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-boolean v2, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    if-eqz v2, :cond_3

    sget p1, Lcom/motorola/camera/background/service/jms/IJobMgrService$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.motorola.camera.background.service.jms.IJobMgrService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/motorola/camera/background/service/jms/IJobMgrService;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/motorola/camera/background/service/jms/IJobMgrService$Stub$Proxy;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/motorola/camera/background/service/jms/IJobMgrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iput-object p1, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    new-instance p1, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    invoke-direct {p1}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_1
    sget-boolean p2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0, p2}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v2, v2, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {v2, p2, v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x1

    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v2, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    sget-object v6, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v6, v6, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    iget v0, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    const-string v7, "CameraAppClient"

    invoke-interface {v2, p1, v6, v0, v7}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p1, p1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {p1}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v6

    sget-object p1, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v7, p1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v10, Lcom/motorola/camera/background/common/msg/MsgType;->SUSPEND_PROCESSING:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v9, Lcom/motorola/camera/background/common/TaskId;

    invoke-direct {v9, v3}, Lcom/motorola/camera/background/common/TaskId;-><init>(I)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v6 .. v11}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    sget-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v2, "JmsServiceInterface registerClient() exception: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iput-boolean p2, p1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    iput-boolean v3, p1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    iget-object p1, p1, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    sget-object p2, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v0, "JmsServiceInterface initialize() exception: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p1, p1, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    monitor-exit v1

    goto :goto_4

    :cond_3
    iget-boolean p2, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_4

    :try_start_4
    iget-object p2, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {p2}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v4

    sget-object p2, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v5, p2, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v8, Lcom/motorola/camera/background/common/msg/MsgType;->SUSPEND_PROCESSING:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v7, Lcom/motorola/camera/background/common/TaskId;

    invoke-direct {v7, v3}, Lcom/motorola/camera/background/common/TaskId;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v4 .. v9}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v0

    :try_start_5
    sget-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v2, "onServiceConnected, exception sending resume message"

    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    :goto_3
    monitor-exit v1

    :goto_4
    return-void

    :goto_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p1, p1, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
