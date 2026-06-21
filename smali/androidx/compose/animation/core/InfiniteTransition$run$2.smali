.class public final Landroidx/compose/animation/core/InfiniteTransition$run$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tmp2_rcvr:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$r8$classId:I

    .line 4
    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "state"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "event"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    return-object v0

    :pswitch_0
    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v3, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1$1;

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v1, v6}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->access$DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AbstractComposeView;->Content(Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v1, Landroidx/compose/ui/Modifier;

    check-cast v2, Landroidx/compose/ui/Modifier$Element;

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    instance-of v3, v2, Landroidx/compose/ui/ComposedModifier;

    if-eqz v3, :cond_4

    check-cast v2, Landroidx/compose/ui/ComposedModifier;

    iget-object v2, v2, Landroidx/compose/ui/ComposedModifier;->factory:Lkotlin/jvm/functions/Function3;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-static {v0, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeImpl(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_4
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v1, Ljava/util/Set;

    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceManager;

    iget-object v2, v0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    goto :goto_4

    :cond_6
    instance-of v4, v3, Ljava/util/Set;

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_7
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_9

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    :goto_4
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->access$drainChanges(Landroidx/preference/PreferenceManager;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Lambda;

    new-instance v2, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_9
    const-string v0, "Unexpected notification"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_4
    check-cast v1, Landroidx/compose/runtime/saveable/SaveableHolder;

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v5, v1, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    if-eqz v5, :cond_b

    invoke-interface {v5, v4}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    const-string v0, "item can\'t be saved"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    return-object v1

    :pswitch_5
    check-cast v1, Ljava/util/Set;

    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    instance-of v2, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const/4 v3, 0x4

    if-eqz v2, :cond_11

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v2, v2, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    iget-object v4, v2, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_15

    const/4 v6, 0x0

    move v7, v6

    :goto_8
    aget-wide v8, v2, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_10

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_9
    if-ge v12, v10, :cond_f

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_e

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v4, v13

    instance-of v14, v13, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v14, :cond_14

    check-cast v13, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_a

    :cond_e
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_f
    if-ne v10, v11, :cond_15

    :cond_10
    if-eq v7, v5, :cond_15

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_11
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_12

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_b

    :cond_12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v5, :cond_14

    check-cast v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_14
    :goto_a
    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v1, Ljava/util/Set;

    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1d

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    instance-of v4, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const/4 v5, 0x1

    if-eqz v4, :cond_1a

    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    iget-object v4, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_1c

    const/4 v7, 0x0

    move v8, v7

    :goto_c
    aget-wide v9, v1, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_19

    sub-int v11, v8, v6

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v13, v7

    :goto_d
    if-ge v13, v11, :cond_18

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_17

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v4, v14

    instance-of v15, v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v15, :cond_16

    move-object v15, v14

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v15

    if-nez v15, :cond_16

    goto :goto_e

    :catchall_0
    move-exception v0

    goto :goto_11

    :cond_16
    invoke-virtual {v3, v14}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_e
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_18
    if-ne v11, v12, :cond_1c

    :cond_19
    if-eq v8, v6, :cond_1c

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1a
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v6, :cond_1b

    move-object v6, v4

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :cond_1d
    const/4 v0, 0x0

    :goto_10
    monitor-exit v2

    if-eqz v0, :cond_1e

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_1e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_11
    monitor-exit v2

    throw v0

    :pswitch_7
    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    move-object v1, v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1f

    move v2, v4

    goto :goto_12

    :cond_1f
    const/4 v2, 0x0

    :goto_12
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_20
    const/4 v0, 0x0

    throw v0

    :pswitch_8
    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(ILandroidx/compose/runtime/ComposerImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v2, 0x7

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazySaveableStateHolderProvider(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/unit/Density;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v3, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    const v5, 0x7fffffff

    if-eq v1, v5, :cond_21

    goto :goto_13

    :cond_21
    const-string v1, "LazyVerticalGrid\'s width should be bound by parent."

    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_13
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v0

    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    rem-int/2addr v0, v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_14
    if-ge v8, v5, :cond_23

    if-ge v8, v0, :cond_22

    const/4 v9, 0x1

    goto :goto_15

    :cond_22
    move v9, v7

    :goto_15
    add-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_23
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v4

    array-length v0, v4

    new-array v6, v0, [I

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    invoke-direct {v0, v4, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;-><init>([I[I)V

    return-object v0

    :pswitch_b
    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v5, v1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/BiasAlignment;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/BiasAlignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v2

    :pswitch_c
    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v1, v1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    move-object/from16 v3, p2

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result v0

    int-to-long v1, v2

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v2

    :pswitch_d
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableNode;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v2, v5}, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;FFLkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v3, v5, v5, v4, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_e
    check-cast v1, Landroidx/compose/animation/EnterExitState;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/animation/EnterExitState;

    sget-object v3, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    if-ne v1, v3, :cond_24

    if-ne v2, v3, :cond_24

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v0, v0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-boolean v0, v0, Landroidx/compose/animation/TransitionData;->hold:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_f
    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;->$tmp2_rcvr:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/compose/animation/core/InfiniteTransition;->run$animation_core_release(ILandroidx/compose/runtime/ComposerImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
