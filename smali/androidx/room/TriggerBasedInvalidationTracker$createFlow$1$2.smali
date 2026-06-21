.class public final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$flow:Ljava/lang/Object;

.field public final synthetic $currentVersions:Ljava/io/Serializable;

.field public final synthetic $r8$classId:I

.field public final synthetic $resolvedTableNames:Ljava/lang/Object;

.field public final synthetic $tableIds:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/io/Serializable;

    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/io/Serializable;

    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    iget v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$1:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/io/Serializable;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_3

    .line 3
    new-instance v2, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    .line 4
    const-string v4, "Child of the scoped flow was cancelled"

    invoke-direct {v2, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {p2, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 6
    iput-object p0, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    :goto_1
    iget-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/io/Serializable;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$2;

    iget-object v4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v5, 0x0

    invoke-direct {v2, v4, p0, p1, v5}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$2;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v5, v1, v2, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object v1

    .line 9
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 10
    iget-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/io/Serializable;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    instance-of v2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v3

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 11
    :cond_4
    instance-of v2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz v2, :cond_5

    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 12
    :cond_5
    instance-of v2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz v2, :cond_6

    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 13
    :cond_6
    instance-of v2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v2, :cond_7

    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v3

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 14
    :cond_7
    instance-of v2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    if-eqz v2, :cond_8

    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 15
    :cond_8
    instance-of v2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v2, :cond_9

    iget p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v3

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 16
    :cond_9
    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz p1, :cond_a

    iget p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 17
    :cond_a
    :goto_3
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, 0x0

    if-lez p1, :cond_b

    move p1, v3

    goto :goto_4

    :cond_b
    move p1, v1

    .line 18
    :goto_4
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    move v0, v1

    .line 19
    :goto_5
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p2, :cond_d

    move p2, v3

    goto :goto_6

    :cond_d
    move p2, v1

    .line 20
    :goto_6
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 21
    iget-boolean v2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    if-eq v2, p1, :cond_e

    .line 22
    iput-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    move v1, v3

    .line 23
    :cond_e
    iget-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    if-eq p1, v0, :cond_f

    .line 24
    iput-boolean v0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    move v1, v3

    .line 25
    :cond_f
    iget-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    if-eq p1, p2, :cond_10

    .line 26
    iput-boolean p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    goto :goto_7

    :cond_10
    move v3, v1

    :goto_7
    if-eqz v3, :cond_11

    .line 27
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 28
    :cond_11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 29
    :pswitch_1
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->emit([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emit([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    instance-of v2, p2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    iget v3, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    invoke-direct {v2, p0, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    iget v4, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iget-object p1, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$1:[I

    iget-object p0, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    iget-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/io/Serializable;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_4

    .line 32
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p0, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    iput-object p1, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$1:[I

    iput v6, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    invoke-interface {v1, p2, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_8

    goto :goto_3

    .line 33
    :cond_4
    iget-object v4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    check-cast v4, [I

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 35
    array-length v7, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v8, v7, :cond_7

    aget-object v10, v0, v8

    add-int/lit8 v11, v9, 0x1

    .line 36
    iget-object v12, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v12, :cond_6

    check-cast v12, [I

    aget v9, v4, v9

    aget v12, v12, v9

    .line 37
    aget v9, p1, v9

    if-eq v12, v9, :cond_5

    .line 38
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_2

    .line 39
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 41
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iput-object p0, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    iput-object p1, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$1:[I

    iput v5, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    invoke-interface {v1, p2, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_8

    :goto_3
    return-object v3

    .line 42
    :cond_8
    :goto_4
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/io/Serializable;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
