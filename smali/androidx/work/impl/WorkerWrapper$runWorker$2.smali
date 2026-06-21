.class public final Landroidx/work/impl/WorkerWrapper$runWorker$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $isTracingEnabled:Z

.field public final synthetic $r8$classId:I

.field public final synthetic $traceTag:Ljava/io/Serializable;

.field public final synthetic $worker:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$worker:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$traceTag:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->this$0:Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$isTracingEnabled:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$worker:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$isTracingEnabled:Z

    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$traceTag:Ljava/io/Serializable;

    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$traceTag:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-boolean v4, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$isTracingEnabled:Z

    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v5, p1, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->this$0:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v5, p1, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$worker:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$traceTag:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    iget-boolean v4, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$isTracingEnabled:Z

    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5, p1, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->this$0:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5, p1, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iput-boolean v2, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$worker:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$worker:Ljava/lang/Object;

    check-cast v0, Landroidx/work/ListenableWorker;

    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->reason:I

    iget-object v1, v0, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, -0x100

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->onStopped()V

    :cond_4
    iget-boolean p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$isTracingEnabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->$traceTag:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    iget-object v0, v0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
