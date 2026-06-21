.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clock:Landroidx/work/SystemClock;

.field public final contentUriTriggerWorkersLimit:I

.field public final defaultProcessName:Ljava/lang/String;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final inputMergerFactory:Landroidx/work/SystemClock;

.field public final isMarkingJobsAsImportantWhileForeground:Z

.field public final maxJobSchedulerId:I

.field public final maxSchedulerLimit:I

.field public final minimumLoggingLevel:I

.field public final runnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

.field public final taskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final tracer:Landroidx/work/SystemClock;

.field public final workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public final workerFactory:Landroidx/work/SystemClock;


# direct methods
.method public constructor <init>(Landroidx/work/Data$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    iput-object v0, p0, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/work/SystemClock;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    sget-object v1, Landroidx/work/SystemClock;->INSTANCE:Landroidx/work/SystemClock;

    iput-object v1, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/SystemClock;

    sget-object v1, Landroidx/work/SystemClock;->INSTANCE$1:Landroidx/work/SystemClock;

    iput-object v1, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/SystemClock;

    new-instance v1, Landroidx/work/impl/DefaultRunnableScheduler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>(I)V

    iput-object v1, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    const/4 v1, 0x4

    iput v1, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    const/16 v1, 0x14

    iput v1, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    iget-object p1, p1, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    const/16 p1, 0x8

    iput p1, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    iput-boolean v0, p0, Landroidx/work/Configuration;->isMarkingJobsAsImportantWhileForeground:Z

    new-instance p1, Landroidx/work/SystemClock;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    return-void
.end method
