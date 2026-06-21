.class public final Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final $matched:Ljava/lang/Object;

.field public final $predicate:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final $this_flow:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/work/impl/WorkDatabase_Impl;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lkotlinx/coroutines/internal/InlineList;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    .line 6
    new-instance p2, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    invoke-static {v0, p1, p0, v1, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0

    :pswitch_0
    instance-of v0, p2, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    iget v1, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    goto :goto_1

    :cond_1
    new-instance v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_1
    iget-object p2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p1, Ljava/util/Set;

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    iput-object p2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    iput v4, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    invoke-static {p1, v4, p0, v0}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/work/impl/WorkDatabase_Impl;ZLandroidx/room/RoomDatabase$$ExternalSyntheticLambda0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    :goto_2
    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    iput v3, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    return-object v1

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/animation/core/Transition;

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ProduceStateScopeImpl;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p2, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_5

    :cond_7
    const/4 p0, 0x0

    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_8

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    goto :goto_6

    :cond_8
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_6
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v6, :cond_9

    if-eq v2, v4, :cond_c

    if-ne v2, v3, :cond_b

    :cond_9
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_a
    move-object v1, v5

    goto :goto_8

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$1:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_e

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    iput v6, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    goto :goto_8

    :cond_e
    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$predicate:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$2;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    invoke-virtual {p2, p1, v0}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_f

    goto :goto_8

    :cond_f
    :goto_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$matched:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v6, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;->$this_flow:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    const/4 p2, 0x0

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_8
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
