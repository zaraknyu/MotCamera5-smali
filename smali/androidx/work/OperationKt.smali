.class public abstract Landroidx/work/OperationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Data$Builder;
    .locals 7

    const-string/jumbo v0, "tracer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Landroidx/work/Data$Builder;->IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

    invoke-direct {v6, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    new-instance v1, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/SystemClock;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p0

    new-instance p1, Landroidx/work/Data$Builder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    return-object p1
.end method
