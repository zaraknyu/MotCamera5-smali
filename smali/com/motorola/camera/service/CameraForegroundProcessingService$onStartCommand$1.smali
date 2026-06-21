.class public final Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $flags:I

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $startId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;ILandroid/content/Intent;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iput p2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$startId:I

    iput-object p3, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$flags:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;

    iget-object v3, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$intent:Landroid/content/Intent;

    iget v4, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$flags:I

    iget-object v1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iget v2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$startId:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;ILandroid/content/Intent;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iget v1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$startId:I

    iput v1, v0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->lastStartId:I

    iget-object v2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$intent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "CameraForegroundProcessingService.EXTRA_TASK_ID"

    const-class v4, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/common/TaskId;

    const-string v4, "CameraForegroundProcessingService.EXTRA_ALGO_CONTEXT"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-wide v5, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v7, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onStartCommand, startId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jobNum: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$flags:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "CameraForegroundProcessingService"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz v3, :cond_4

    iget-wide v6, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    long-to-int v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-nez v1, :cond_3

    if-eqz p0, :cond_2

    const-string p0, "Media data is null, but seems like a retry. Ignoring."

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No media data for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_2
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)V

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    invoke-direct {v6, v3, v2, v1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;-><init>(Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1$1$1;

    invoke-direct {v1, v3, v0, v4}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1$1$1;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    invoke-static {p1, p0, v4, v1, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_4
    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/service/CameraForegroundProcessingService;->access$tryStopService(Lcom/motorola/camera/service/CameraForegroundProcessingService;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
