.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

.field public final synthetic $childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

.field public final synthetic $parentRect:Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    iput-object p4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v4, v4, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$2;

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;

    invoke-direct {v0, v3, p0, v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v4, v4, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    return-object p0
.end method
