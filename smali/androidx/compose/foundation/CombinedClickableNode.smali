.class public final Landroidx/compose/foundation/CombinedClickableNode;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# instance fields
.field public final doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

.field public final longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function0;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    sget p0, Landroidx/collection/LongObjectMapKt;->$r8$clinit:I

    new-instance p0, Landroidx/collection/MutableLongObjectMap;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    iput-object p0, v0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    new-instance p0, Landroidx/collection/MutableLongObjectMap;

    invoke-direct {p0, p1}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    iput-object p0, v0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    return-void
.end method


# virtual methods
.method public final applyAdditionalSemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 0

    return-void
.end method

.method public final clickPointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;I)V

    new-instance v5, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v0, 0x6

    invoke-direct {v5, v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    sget-object p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public final onCancelKeyInput()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNode;->resetKeyPressState()V

    return-void
.end method

.method public final onClickKeyDownEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    const/4 p0, 0x0

    return p0
.end method

.method public final onClickKeyUpEvent-ZmokQxo(Landroid/view/KeyEvent;)V
    .locals 5

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongObjectMap;->remove(J)Ljava/lang/Object;

    :cond_2
    if-nez v3, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final onReset()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNode;->resetKeyPressState()V

    return-void
.end method

.method public final resetKeyPressState()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    iget-object v2, v1, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    iget-object v3, v1, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-ltz v4, :cond_3

    move v14, v13

    const-wide/16 v15, 0x80

    :goto_0
    aget-wide v5, v3, v14

    const-wide/16 v17, 0xff

    not-long v7, v5

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_2

    sub-int v7, v14, v4

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    move v8, v13

    :goto_1
    if-ge v8, v7, :cond_1

    and-long v19, v5, v17

    cmp-long v19, v19, v15

    if-gez v19, :cond_0

    shl-int/lit8 v19, v14, 0x3

    add-int v19, v19, v8

    aget-object v19, v2, v19

    move/from16 v20, v9

    move-object/from16 v9, v19

    check-cast v9, Lkotlinx/coroutines/Job;

    move-wide/from16 v21, v10

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :cond_0
    move/from16 v20, v9

    move-wide/from16 v21, v10

    :goto_2
    shr-long/2addr v5, v12

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v20

    move-wide/from16 v10, v21

    goto :goto_1

    :cond_1
    move/from16 v20, v9

    move-wide/from16 v21, v10

    if-ne v7, v12, :cond_4

    goto :goto_3

    :cond_2
    move/from16 v20, v9

    move-wide/from16 v21, v10

    :goto_3
    if-eq v14, v4, :cond_4

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v20

    move-wide/from16 v10, v21

    goto :goto_0

    :cond_3
    move/from16 v20, v9

    move-wide/from16 v21, v10

    const-wide/16 v15, 0x80

    const-wide/16 v17, 0xff

    :cond_4
    invoke-virtual {v1}, Landroidx/collection/MutableLongObjectMap;->clear()V

    iget-object v0, v0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_8

    move v4, v13

    :goto_4
    aget-wide v5, v2, v4

    not-long v7, v5

    shl-long v7, v7, v20

    and-long/2addr v7, v5

    and-long v7, v7, v21

    cmp-long v7, v7, v21

    if-eqz v7, :cond_7

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    move v8, v13

    :goto_5
    if-ge v8, v7, :cond_6

    and-long v9, v5, v17

    cmp-long v9, v9, v15

    if-ltz v9, :cond_5

    shr-long/2addr v5, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    shl-int/lit8 v0, v4, 0x3

    add-int/2addr v0, v8

    aget-object v0, v1, v0

    check-cast v0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0

    :cond_6
    if-ne v7, v12, :cond_8

    :cond_7
    if-eq v4, v3, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroidx/collection/MutableLongObjectMap;->clear()V

    return-void
.end method
