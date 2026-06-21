.class public final Landroidx/compose/material/ripple/RippleNode$onAttach$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/material/ripple/AndroidRippleNode;


# direct methods
.method public constructor <init>(Landroidx/compose/material/ripple/AndroidRippleNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Landroidx/compose/material/ripple/AndroidRippleNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Landroidx/compose/material/ripple/AndroidRippleNode;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Landroidx/compose/material/ripple/AndroidRippleNode;

    iget-object v3, v1, Landroidx/compose/material/ripple/AndroidRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v3, v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1, p1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method
