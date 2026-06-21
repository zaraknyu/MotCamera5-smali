.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;


# instance fields
.field public final synthetic $slotId:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->$slotId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->$slotId:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_2

    iget v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "No pre-composed items to dispose"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v2, v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/collection/MutableVector;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v2, v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v3, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v2, v3

    if-lt p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "Item is not in pre-composed item range"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_1
    iget v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v2, v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v4, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v2, v4

    iget v4, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int/2addr v2, v4

    iput-boolean v3, v1, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    invoke-virtual {v1, p0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    invoke-virtual {v0, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->disposeOrReuseStartingFromIndex(I)V

    :cond_2
    return-void
.end method

.method public final getPlaceablesCount()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->$slotId:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final premeasure-0kLqBqw(IJ)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->$slotId:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v1, v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is out of bound of [0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Pre-measure called on node that is not placed"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1, p0, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    :cond_3
    return-void
.end method

.method public final traverseDescendants(Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;->$slotId:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    if-eqz p0, :cond_e

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitSubtreeIf called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v2, :cond_1

    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p0, :cond_e

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_d

    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_c

    instance-of v7, v5, Landroidx/compose/ui/node/TraversableNode;

    if-eqz v7, :cond_5

    check-cast v5, Landroidx/compose/ui/node/TraversableNode;

    invoke-interface {v5}, Landroidx/compose/ui/node/TraversableNode;->getTraverseKey()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v5}, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    goto :goto_3

    :cond_3
    sget-object v5, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    :goto_3
    sget-object v7, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->CancelTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    if-ne v5, v7, :cond_4

    goto :goto_7

    :cond_4
    sget-object v7, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    if-eq v5, v7, :cond_2

    goto :goto_6

    :cond_5
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_b

    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_b

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x1

    if-eqz v7, :cond_a

    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_9

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_6

    move-object v5, v7

    goto :goto_5

    :cond_6
    if-nez v6, :cond_7

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_8
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_a
    if-ne v8, v9, :cond_b

    goto :goto_2

    :cond_b
    :goto_6
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_2

    :cond_c
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_d
    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto/16 :goto_0

    :cond_e
    :goto_7
    return-void
.end method
