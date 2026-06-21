.class public abstract Lkotlin/reflect/jvm/internal/impl/storage/StorageKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final bringIntoView(Landroidx/compose/ui/node/DelegatableNode;Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 10

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v1, "visitAncestors called on an unattached node"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    :goto_1
    if-eqz v0, :cond_a

    iget v3, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    move-object v3, v0

    move-object v5, v2

    :goto_2
    if-eqz v3, :cond_9

    instance-of v6, v3, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    if-eqz v6, :cond_2

    move-object v2, v3

    goto :goto_5

    :cond_2
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_8

    instance-of v6, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_8

    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_7

    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_3

    move-object v3, v6

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_7
    if-ne v7, v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_2

    :cond_9
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_0

    :cond_b
    move-object v0, v2

    goto :goto_0

    :cond_c
    :goto_5
    check-cast v2, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p1, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p0, v0, p2}, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;->bringIntoView(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_e

    return-object p0

    :cond_e
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getValue(Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
