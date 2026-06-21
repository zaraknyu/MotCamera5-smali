.class public final Lcom/motorola/camera/saving/SavingFileKeepAlive;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;
.implements Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/saving/SavingFileKeepAlive;

.field public static final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public static final savingJobs:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/saving/SavingFileKeepAlive;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/SavingFileKeepAlive;->INSTANCE:Lcom/motorola/camera/saving/SavingFileKeepAlive;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/SavingFileKeepAlive;->savingJobs:Ljava/util/LinkedHashSet;

    new-instance v0, Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v1, v2}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    sput-object v0, Lcom/motorola/camera/saving/SavingFileKeepAlive;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method

.method public static removeSavingJob(Ljava/lang/Integer;)V
    .locals 3

    new-instance v0, Lcom/motorola/camera/saving/SavingFileKeepAlive$removeSavingJob$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/SavingFileKeepAlive$removeSavingJob$1;-><init>(Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    sget-object v2, Lcom/motorola/camera/saving/SavingFileKeepAlive;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v2, v1, v1, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method


# virtual methods
.method public final onJobTransferred(IZ)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/saving/SavingFileKeepAlive;->removeSavingJob(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final onQueueEmpty()V
    .locals 0

    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/saving/SavingFileKeepAlive;->removeSavingJob(Ljava/lang/Integer;)V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/saving/SavingFileKeepAlive;->removeSavingJob(Ljava/lang/Integer;)V

    return-void
.end method
