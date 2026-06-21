.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 14

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0

    :pswitch_1
    const-string/jumbo v0, "type"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskId"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "retCode"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "processCtlMsg: message processing not allowed. Either not initialized or shutting down."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processCtlMsg: unknown type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0, v4, v0}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    iget p0, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    goto :goto_1

    :cond_2
    invoke-static {p0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "processJob: Coprocessor not registered"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v9

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    move-object v5, v1

    goto :goto_0

    :cond_4
    move-object v5, v13

    :goto_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    iget v8, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v10

    const/4 v11, 0x0

    move-object v0, v1

    move v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;)V

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;

    invoke-direct {v1, p0, p1, v0, v13}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_1
    return-object v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 15

    move/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    iget v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->$r8$classId:I

    const-string v6, "msg"

    const-string v7, "JOB_CONTEXT"

    const-string/jumbo v8, "task_id"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Ljava/lang/Object;

    packed-switch v5, :pswitch_data_0

    if-nez v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$JniClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const-string v1, "CameraForegroundProcessingService"

    if-eq v0, v9, :cond_1

    if-eq v0, v10, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processMsg, Unknown message "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_3

    :cond_1
    check-cast v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iget-object v0, v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;->bgJobService:Lcom/motorola/camera/service/BgJobService;

    if-eqz v3, :cond_2

    iget-wide v5, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v4, :cond_3

    const-string v0, "handleJobComplete, message is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_3

    :cond_3
    sget-object v2, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v5, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;

    invoke-virtual {v5}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v2, v4, v5}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    new-instance v4, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    iget-object v5, v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v6, v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobContext:Ljava/lang/String;

    iget-object v9, v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v2, v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobMetrics:Lcom/motorola/camera/background/common/JobMetrics;

    invoke-direct {v4, v5, v6, v9, v2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/JobMetrics;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "handleJobComplete, "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_4

    iget-wide v4, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v12

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    if-nez v2, :cond_5

    const-string v0, "handleJobComplete, jobHolder is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_3

    :cond_5
    iget-object v1, v2, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;->mediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    const-string v6, "getApplicationContext(...)"

    if-ne v9, v5, :cond_6

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v7, v1}, Lcom/motorola/camera/service/BgJobService;->saveBgProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v7, v1}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :goto_2
    sget-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v2, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v0, v0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v11, v0, v1}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteTagData(Landroid/content/Context;J)I

    iget-object v0, v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;->mainDispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;

    invoke-direct {v1, v3, v11, v12}, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v0, v12, v1, v10}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-object v0, v5

    :goto_3
    return-object v0

    :pswitch_0
    check-cast v11, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/16 v1, 0xd

    const/16 v5, 0xc8

    const-string v9, "DB_URI"

    if-eq v0, v1, :cond_8

    const/16 v1, 0xe

    if-eq v0, v1, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;

    invoke-virtual {v1}, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v4, v1}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;

    iget-object v0, v0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v9, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, ""

    invoke-virtual {v1, v7, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v3, v5, v1}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->-$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_8
    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v1, "SaveImageServiceHandler"

    if-eq v2, v0, :cond_9

    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string/jumbo v0, "processBgProcessCapture: Invalid message type ($type)"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;

    invoke-virtual {v2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v4, v2}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    iget-object v4, v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v6, v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobContext:Ljava/lang/String;

    iget-object v10, v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v0, v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobMetrics:Lcom/motorola/camera/background/common/JobMetrics;

    invoke-direct {v2, v4, v6, v10, v0}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/JobMetrics;)V

    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne v10, v2, :cond_a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "JOB_METRICS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v0, 0x64

    invoke-static {v11, v3, v0, v1}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->-$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processBgProcessCapture failed: Defaulting to normal process, jobId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ReturnCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v3, v5, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->-$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    goto :goto_4

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x12c

    invoke-static {v11, v3, v1, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->-$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    :goto_4
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    :pswitch_1
    const-string/jumbo v5, "type"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "taskId"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "retCode"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    move-object v14, v11

    check-cast v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v5, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_c

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processMsg: message processing not allowed. Either not initialized or shutting down."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_a

    :cond_c
    iget-boolean v5, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->isProcessingSuspended:Z

    if-nez v5, :cond_d

    invoke-virtual {v14}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v7, 0x0

    if-eq v5, v9, :cond_11

    if-eq v5, v10, :cond_10

    packed-switch v5, :pswitch_data_1

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processMsg: unknown type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_2
    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->sendControlMessage(ILcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v13

    goto/16 :goto_a

    :pswitch_3
    new-instance v3, Lcom/motorola/camera/background/common/TaskId;

    invoke-direct {v3, v7}, Lcom/motorola/camera/background/common/TaskId;-><init>(I)V

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->sendControlMessage(ILcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    if-ne v0, v13, :cond_e

    invoke-static {v4}, Lkotlin/text/StringsKt;->toBooleanStrict(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->isProcessingSuspended:Z

    if-eqz v1, :cond_f

    iget-object v1, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v1}, Lcom/motorola/camera/background/common/SimpleWatchDog;->cancel()V

    iget-object v1, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v1}, Lcom/motorola/camera/background/common/SimpleWatchDog;->timerCancel()V

    :cond_e
    :goto_5
    move-object v13, v0

    goto/16 :goto_a

    :cond_f
    invoke-virtual {v14}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    goto :goto_5

    :cond_10
    :pswitch_4
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;

    invoke-direct {v2, v14, v1, v0, v12}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_11
    :pswitch_5
    iget-object v0, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    iget v4, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget v5, v3, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget v4, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    if-eqz v4, :cond_13

    sget-object v6, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SOURCE:Lcom/motorola/camera/background/common/ClientType;

    if-eq v4, v6, :cond_12

    sget-object v6, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    if-ne v4, v6, :cond_13

    :cond_12
    move v4, v9

    goto :goto_6

    :cond_13
    move v4, v7

    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v6, :cond_14

    iget-object v6, v6, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    if-eqz v6, :cond_14

    sget-object v8, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SINK:Lcom/motorola/camera/background/common/ClientType;

    if-eq v6, v8, :cond_15

    sget-object v8, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    if-ne v6, v8, :cond_14

    goto :goto_7

    :cond_14
    move v9, v7

    :cond_15
    :goto_7
    invoke-static {v14, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v6

    if-eqz v6, :cond_18

    if-eqz v4, :cond_18

    if-nez v9, :cond_16

    goto/16 :goto_9

    :cond_16
    iget v4, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    move-object v5, v0

    goto :goto_8

    :cond_17
    move-object v5, v12

    :goto_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14, v6}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v9

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    iget-object v4, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "processJob: callerId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " taskId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " coProc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    iget v4, v6, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v6}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v10

    const/4 v11, 0x0

    move-wide v6, v7

    move-object v8, v4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;)V

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;

    invoke-direct {v2, v14, v1, v0, v12}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto :goto_a

    :cond_18
    :goto_9
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    iget v1, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    const-string v2, " clientDst="

    const-string v3, ", coProc="

    const-string/jumbo v4, "processJob: clients and/or coprocessor not registered clientSrc="

    invoke-static {v1, v5, v4, v2, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_a
    :pswitch_6
    return-object v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public sendControlMessage(ILcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 12

    sget-object v5, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {p0, p3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "no CoProc id found for message "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v9

    if-nez v9, :cond_1

    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "no CoProc interface found for message "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    iget v3, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v10

    const/4 v11, 0x0

    move-object v3, p2

    move-object v2, p3

    move-object/from16 v4, p4

    move-object v0, v1

    move v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;)V

    new-instance p2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$sendControlMessage$1;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$sendControlMessage$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method
