.class public final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $builderAction:Landroidx/compose/runtime/Pending$keyMap$2;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Pending$keyMap$2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->$builderAction:Landroidx/compose/runtime/Pending$keyMap$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->$builderAction:Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;-><init>(Landroidx/compose/runtime/Pending$keyMap$2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->L$1:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    move-object v3, p1

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->$builderAction:Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {p1}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object v3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;->label:I

    invoke-virtual {v3, p1, p0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object v0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
