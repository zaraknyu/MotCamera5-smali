.class public final Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $taskId:Lcom/motorola/camera/background/common/TaskId;

.field public final synthetic this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->$taskId:Lcom/motorola/camera/background/common/TaskId;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;

    iget-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->$taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-direct {p1, p0, v0, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iget-object v0, p1, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;->$taskId:Lcom/motorola/camera/background/common/TaskId;

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/motorola/camera/service/CameraForegroundProcessingService;->access$tryStopService(Lcom/motorola/camera/service/CameraForegroundProcessingService;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
