.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public final mBgProcessingJob:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mJobCallbackHandler:Landroid/os/Handler;

.field public final mJobProcessHandler:Landroid/os/Handler;

.field public final mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

.field public mServiceCallbackHandler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

.field public final saveImgSvcHndler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;


# direct methods
.method public static -$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V
    .locals 5

    iget-wide v0, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/background/BgJobData;

    invoke-direct {v4, p1, p2, p3}, Lcom/motorola/camera/background/BgJobData;-><init>(Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, v1, p3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;JI)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->saveImgSvcHndler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg_job_callback_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobCallbackHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg_job_process_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.motorola.camera.service.BgJobService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/PermissionCallback;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p0}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;Lcom/motorola/camera/PermissionCallback;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    return-void
.end method


# virtual methods
.method public final handleJobComplete(Lcom/motorola/camera/background/common/TaskId;)V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    const-string/jumbo v0, "status"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;

    invoke-direct {v0, v2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;-><init>(Lcom/motorola/camera/background/common/ReturnCode;)V

    sget-object v1, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$Companion;

    invoke-virtual {v3}, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JobMgrService processJobComplete() exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageServiceHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final retryJob(J)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/BgJobData;

    const-string v1, "SaveImageServiceHandler"

    if-nez v0, :cond_0

    const-string p0, "Job not present or removed from queue"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, v0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    if-eqz v2, :cond_1

    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v3, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v7, ""

    sget-object v4, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error while sending Job Progress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "context"

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceComponentInfo:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceConnection:Lcom/google/android/play/core/appupdate/internal/zzw;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;JI)V

    const-wide/16 p1, 0x1388

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
