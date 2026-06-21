.class public final synthetic Landroidx/room/RoomDatabase$closeBarrier$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    iput p8, p0, Landroidx/room/RoomDatabase$closeBarrier$1;->$r8$classId:I

    invoke-direct/range {p0 .. p7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/room/RoomDatabase$closeBarrier$1;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;

    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TRIPOD_PREVIEW_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-object v4

    :pswitch_0
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    :cond_3
    :goto_1
    return-object v4

    :pswitch_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForContentCapture(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    invoke-direct {v3, v1, v0}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V

    :goto_2
    return-object v3

    :pswitch_2
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onClearFocusForOwner:Landroidx/room/RoomDatabase$closeBarrier$1;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$closeBarrier$1;->invoke()Ljava/lang/Object;

    :cond_6
    return-object v4

    :pswitch_3
    check-cast v0, Landroidx/compose/ui/focus/FocusInvalidationManager;

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    iget-object v5, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    iget-object v6, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->activeFocusTargetNodeFetcher:Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/focus/FocusTargetNode;

    const/16 v14, 0x8

    const/4 v15, 0x0

    if-nez v6, :cond_a

    iget-object v2, v5, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v6, v5, Landroidx/collection/MutableScatterSet;->metadata:[J

    const-wide/16 v16, 0x80

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_17

    move v8, v15

    const-wide/16 v18, 0xff

    :goto_3
    aget-wide v9, v6, v8

    const/16 p0, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v11, v9

    shl-long v11, v11, p0

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_9

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    move v12, v15

    :goto_4
    if-ge v12, v11, :cond_8

    and-long v22, v9, v18

    cmp-long v13, v22, v16

    if-ltz v13, :cond_7

    shr-long/2addr v9, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    shl-int/lit8 v0, v8, 0x3

    add-int/2addr v0, v12

    aget-object v0, v2, v0

    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    throw v3

    :cond_8
    if-ne v11, v14, :cond_17

    :cond_9
    if-eq v8, v7, :cond_17

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    const/16 p0, 0x7

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    iget-boolean v7, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v7, :cond_17

    invoke-virtual {v1, v6}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    :cond_b
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    iget-object v7, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v7, v7, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v7, :cond_c

    const-string/jumbo v7, "visitAncestors called on an unattached node"

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_c
    iget-object v7, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    move v8, v15

    :goto_5
    if-eqz v6, :cond_13

    iget-object v9, v6, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v9, v9, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    iget v9, v9, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v9, v9, 0x1400

    if-eqz v9, :cond_11

    :goto_6
    if-eqz v7, :cond_11

    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v10, v9, 0x1400

    if-eqz v10, :cond_10

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_d

    add-int/lit8 v8, v8, 0x1

    :cond_d
    instance-of v9, v7, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v9, :cond_10

    invoke-virtual {v5, v7}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_7

    :cond_e
    if-gt v8, v2, :cond_f

    check-cast v7, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v7}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    throw v3

    :cond_f
    check-cast v7, Landroidx/compose/ui/node/BackwardsCompatNode;

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v7}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    throw v3

    :cond_10
    :goto_7
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_6

    :cond_11
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-object v7, v6, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v7, :cond_12

    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_5

    :cond_12
    move-object v7, v3

    goto :goto_5

    :cond_13
    iget-object v2, v5, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v6, v5, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_17

    move v8, v15

    :goto_8
    aget-wide v9, v6, v8

    not-long v11, v9

    shl-long v11, v11, p0

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_16

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    move v12, v15

    :goto_9
    if-ge v12, v11, :cond_15

    and-long v22, v9, v18

    cmp-long v13, v22, v16

    if-ltz v13, :cond_14

    shr-long/2addr v9, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_14
    shl-int/lit8 v0, v8, 0x3

    add-int/2addr v0, v12

    aget-object v0, v2, v0

    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    throw v3

    :cond_15
    if-ne v11, v14, :cond_17

    :cond_16
    if-eq v8, v7, :cond_17

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_17
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Landroidx/room/RoomDatabase$closeBarrier$1;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase$closeBarrier$1;->invoke()Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->clear()V

    iput-boolean v15, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    return-object v4

    :pswitch_4
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->updateEnabledCallbacks()V

    return-object v4

    :pswitch_5
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->updateEnabledCallbacks()V

    return-object v4

    :pswitch_6
    check-cast v0, Landroidx/room/RoomDatabase;

    iget-object v1, v0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-eqz v1, :cond_19

    invoke-static {v1, v3}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-eqz v0, :cond_18

    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/ConnectionPool;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-object v4

    :cond_18
    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_19
    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
