.class public Lcom/google/android/gms/internal/base/zau;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Looper;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    return-void

    .line 6
    :pswitch_0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;IZ)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V
    .locals 0

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    const/4 v1, 0x1

    const-string v2, "msg"

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "null cannot be cast to non-null type android.os.Bundle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "extra_media_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v0

    const-string v4, "ProcessingPriorityService"

    if-nez v0, :cond_2

    sget v0, Lcom/motorola/camera/service/ProcessingPriorityService;->$r8$clinit:I

    const-string v0, "App not initialized"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v0, v0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    if-lez v0, :cond_3

    sget v0, Lcom/motorola/camera/service/ProcessingPriorityService;->$r8$clinit:I

    const-string v0, "App running"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v5

    invoke-virtual {p1}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1, v1}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMSSync(Z)V

    :cond_4
    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v2

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v3, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->SET_PROCESSING_PRIORITY:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v7, ""

    sget-object v4, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v1, "Unable to set job priority"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/16 p1, 0x3e8

    div-int/2addr p0, p1

    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    sget v3, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    invoke-interface {v2, v3, p0}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountdown(II)V

    goto :goto_3

    :cond_7
    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    sub-int/2addr p0, p1

    sput p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    if-lt p0, p1, :cond_8

    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_8
    if-lez p0, :cond_9

    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    if-eqz p0, :cond_a

    sget p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_9
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    sget-object p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(ILjava/lang/Object;)V

    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->countdownFinishRunnable:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->countdownFinishRunnable:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    invoke-virtual {p0, p1, v2, v3}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
