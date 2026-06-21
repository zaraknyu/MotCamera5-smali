.class public final Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $it:Lcom/motorola/camera/ui/compose/ComposablePositions;

.field public final synthetic $position:Landroidx/compose/ui/geometry/Rect;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;Lcom/motorola/camera/ui/compose/ComposablePositions;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->this$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->$it:Lcom/motorola/camera/ui/compose/ComposablePositions;

    iput-object p3, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->$position:Landroidx/compose/ui/geometry/Rect;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->$it:Lcom/motorola/camera/ui/compose/ComposablePositions;

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->$position:Landroidx/compose/ui/geometry/Rect;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->this$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;Lcom/motorola/camera/ui/compose/ComposablePositions;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->this$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->composablePositionFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v1, Lkotlin/Pair;

    iget-object v3, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->$it:Lcom/motorola/camera/ui/compose/ComposablePositions;

    iget-object v4, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->$position:Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;->label:I

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
