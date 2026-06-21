.class public final Lkotlinx/coroutines/scheduling/DefaultScheduler;
.super Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget v2, Lkotlinx/coroutines/scheduling/TasksKt;->CORE_POOL_SIZE:I

    sget v3, Lkotlinx/coroutines/scheduling/TasksKt;->MAX_POOL_SIZE:I

    sget-wide v4, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    sget-object v6, Lkotlinx/coroutines/scheduling/TasksKt;->DEFAULT_SCHEDULER_NAME:Ljava/lang/String;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    new-instance v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    iput-object v1, v0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    sput-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
