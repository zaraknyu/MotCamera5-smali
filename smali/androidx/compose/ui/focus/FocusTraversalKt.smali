.class public abstract Landroidx/compose/ui/focus/FocusTraversalKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final tempCoordinates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/compose/ui/focus/FocusTraversalKt;->tempCoordinates:[I

    return-void
.end method

.method public static final backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_9

    if-ne v0, v1, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForBackwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_5

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string v5, "ActiveParent must have a focusedChild"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_7

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_7

    if-eq v6, v1, :cond_3

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0, v0, v3, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz p0, :cond_5

    invoke-virtual {p1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v4

    :cond_7
    invoke-static {p0, v0, v3, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result p0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForBackwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result p0

    return p0
.end method

.method public static final beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v3, v2, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats_I7lrPNg$inSourceBeam(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v4

    iget v5, v2, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v6, v2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v7, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v2, v2, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v8, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v9, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v10, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v11, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    if-nez v4, :cond_12

    invoke-static {v3, v1, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats_I7lrPNg$inSourceBeam(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "This function should only be used for 2-D focus search"

    const/4 v4, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-ne v3, v14, :cond_1

    cmpl-float v15, v11, v2

    if-ltz v15, :cond_10

    goto :goto_0

    :cond_1
    if-ne v3, v13, :cond_2

    cmpg-float v15, v10, v7

    if-gtz v15, :cond_10

    goto :goto_0

    :cond_2
    if-ne v3, v12, :cond_3

    cmpl-float v15, v9, v6

    if-ltz v15, :cond_10

    goto :goto_0

    :cond_3
    if-ne v3, v4, :cond_11

    cmpg-float v15, v8, v5

    if-gtz v15, :cond_10

    :goto_0
    if-ne v3, v14, :cond_4

    goto :goto_3

    :cond_4
    if-ne v3, v13, :cond_5

    goto :goto_3

    :cond_5
    if-ne v3, v14, :cond_6

    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float v1, v11, v1

    goto :goto_1

    :cond_6
    if-ne v3, v13, :cond_7

    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v1, v10

    goto :goto_1

    :cond_7
    if-ne v3, v12, :cond_8

    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float v1, v9, v1

    goto :goto_1

    :cond_8
    if-ne v3, v4, :cond_f

    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v1, v8

    :goto_1
    const/4 v15, 0x0

    cmpg-float v16, v1, v15

    if-gez v16, :cond_9

    move v1, v15

    :cond_9
    if-ne v3, v14, :cond_a

    sub-float/2addr v11, v7

    goto :goto_2

    :cond_a
    if-ne v3, v13, :cond_b

    sub-float v11, v2, v10

    goto :goto_2

    :cond_b
    if-ne v3, v12, :cond_c

    sub-float v11, v9, v5

    goto :goto_2

    :cond_c
    if-ne v3, v4, :cond_e

    sub-float v11, v6, v8

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, v11, v0

    if-gez v2, :cond_d

    move v11, v0

    :cond_d
    cmpg-float v0, v1, v11

    if-gez v0, :cond_12

    goto :goto_3

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public static final beamBeats_I7lrPNg$inSourceBeam(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :goto_0
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v0, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_2

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_4

    :goto_1
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v0, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final calculateBoundingRectRelativeTo(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/geometry/Rect;
    .locals 5

    sget-object v0, Landroidx/compose/ui/focus/FocusTraversalKt;->tempCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, v0, v1

    aget v0, v0, v3

    sub-int/2addr v2, p1

    int-to-float p1, v2

    sub-int/2addr v4, v0

    int-to-float v0, v4

    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v0

    invoke-direct {v1, p1, v0, v2, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v1
.end method

.method public static final clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    return v2

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    :cond_2
    return p1

    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v2

    :goto_0
    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    return v2

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p1, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    return v2
.end method

.method public static final collectAccessibleChildren(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitChildren called on an unattached node"

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

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_3

    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_2

    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    if-eqz p0, :cond_2

    instance-of v4, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v4, :cond_6

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-boolean v4, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_c

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    iget-boolean v4, v4, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v4

    iget-boolean v4, v4, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v4, :cond_5

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->collectAccessibleChildren(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/runtime/collection/MutableVector;)V

    goto :goto_5

    :cond_6
    iget v4, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_c

    instance-of v4, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_c

    move-object v4, p0

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x1

    if-eqz v4, :cond_b

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_a

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_7

    move-object p0, v4

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v6, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p0, v2

    :cond_9
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_a
    :goto_4
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_b
    if-ne v5, v6, :cond_c

    goto :goto_2

    :cond_c
    :goto_5
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_2

    :cond_d
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static final findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v3, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v3, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v3, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v3, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_4

    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    invoke-static {v5, v0, p1, p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v4

    move-object v0, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z
    .locals 4

    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->collectAccessibleChildren(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/runtime/collection/MutableVector;)V

    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p0, p0, v3

    :goto_0
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz p0, :cond_6

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x4

    if-ne p1, v1, :cond_2

    move p1, v2

    :cond_2
    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-direct {v1, v2, p0, v2, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_7

    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-direct {v1, v2, p0, v2, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    :goto_3
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    return v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public static final forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForForwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0, v0, v1, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ActiveParent must have a focusedChild"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->pickChildForForwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result p0

    return p0
.end method

.method public static final generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 9

    .line 8
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 9
    :cond_0
    invoke-static {p2}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 10
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p2}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 13
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;

    const/4 v8, 0x2

    move v6, p0

    move-object v7, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;-><init>(Landroidx/compose/ui/focus/FocusTransactionManager;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;Ljava/lang/Object;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;I)V

    invoke-static {v4, v6, v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z
    .locals 9

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 3
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 6
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 7
    new-instance v1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;-><init>(Landroidx/compose/ui/focus/FocusTransactionManager;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;Ljava/lang/Object;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;I)V

    invoke-static {v4, v6, v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "visitChildren called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v3, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v3, :cond_2

    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p0, :cond_e

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_4

    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_3

    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_d

    move-object v3, v1

    :goto_2
    if-eqz p0, :cond_3

    instance-of v4, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v4, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v4, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_5

    :cond_5
    return-object p0

    :cond_6
    iget v4, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_c

    instance-of v4, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_c

    move-object v4, p0

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    :goto_3
    if-eqz v4, :cond_b

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_a

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_7

    move-object p0, v4

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p0, v1

    :cond_9
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_a
    :goto_4
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_b
    if-ne v6, v5, :cond_c

    goto :goto_2

    :cond_c
    :goto_5
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_2

    :cond_d
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_e
    :goto_6
    return-object v1
.end method

.method public static final getFocusTransactionManager(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    :cond_0
    return-void
.end method

.method public static final isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 2

    invoke-static {p3, p0, p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$isCandidate(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$isCandidate(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p0, p1, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2, p1, p0, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3, p2, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v0

    invoke-static {p3, p2, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final isBetterCandidate_I7lrPNg$isCandidate(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 4

    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v2, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    const/4 v3, 0x3

    if-ne p0, v3, :cond_1

    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_0

    cmpl-float p0, p2, p1

    if-ltz p0, :cond_7

    :cond_0
    cmpl-float p0, p2, v2

    if-lez p0, :cond_7

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne p0, v3, :cond_3

    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float p0, p0, v2

    if-ltz p0, :cond_2

    cmpg-float p0, p2, v2

    if-gtz p0, :cond_7

    :cond_2
    cmpg-float p0, p2, p1

    if-gez p0, :cond_7

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    if-ne p0, p1, :cond_5

    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    cmpl-float p0, p0, v1

    if-gtz p0, :cond_4

    cmpl-float p0, p1, v1

    if-ltz p0, :cond_7

    :cond_4
    cmpl-float p0, p1, v0

    if-lez p0, :cond_7

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    if-ne p0, p1, :cond_8

    iget p0, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_6

    cmpg-float p0, p1, v0

    if-gtz p0, :cond_7

    :cond_6
    cmpg-float p0, p1, v1

    if-gez p0, :cond_7

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J
    .locals 11

    iget v0, p2, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v1, p2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v2, p2, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->right:F

    const-string v3, "This function should only be used for 2-D focus search"

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne p0, v7, :cond_0

    iget v8, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v8, p2

    goto :goto_0

    :cond_0
    if-ne p0, v6, :cond_1

    iget v8, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float v8, v2, v8

    goto :goto_0

    :cond_1
    if-ne p0, v5, :cond_2

    iget v8, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v8, v1

    goto :goto_0

    :cond_2
    if-ne p0, v4, :cond_8

    iget v8, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float v8, v0, v8

    :goto_0
    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    if-gez v10, :cond_3

    move v8, v9

    :cond_3
    float-to-long v8, v8

    const/4 v10, 0x2

    if-ne p0, v7, :cond_4

    goto :goto_1

    :cond_4
    if-ne p0, v6, :cond_5

    :goto_1
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr p1, p0

    int-to-float p2, v10

    div-float/2addr p1, p2

    add-float/2addr p1, p0

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    add-float/2addr v1, v0

    sub-float/2addr p1, v1

    goto :goto_3

    :cond_5
    if-ne p0, v5, :cond_6

    goto :goto_2

    :cond_6
    if-ne p0, v4, :cond_7

    :goto_2
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr p1, p0

    int-to-float v0, v10

    div-float/2addr p1, v0

    add-float/2addr p1, p0

    sub-float/2addr p2, v2

    div-float/2addr p2, v0

    add-float/2addr p2, v2

    sub-float/2addr p1, p2

    :goto_3
    float-to-long p0, p1

    const/16 p2, 0xd

    int-to-long v0, p2

    mul-long/2addr v0, v8

    mul-long/2addr v0, v8

    mul-long/2addr p0, p0

    add-long/2addr p0, v0

    return-wide p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object p0

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    if-nez v0, :cond_7

    iput-boolean v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v1

    new-instance v3, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    invoke-direct {v3, p1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getFocusTransactionManager(Landroidx/compose/ui/focus/FocusTargetNode;)V

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v4, v4, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onExit:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object p1, p1, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    iget-boolean v1, v3, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    if-eqz v1, :cond_4

    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_4
    if-eq v4, p1, :cond_6

    if-eqz p1, :cond_6

    :try_start_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    sget-object v1, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    if-ne p1, v1, :cond_5

    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return-object p1

    :cond_5
    :try_start_2
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return-object p1

    :cond_6
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return-object v2

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    throw p1

    :cond_7
    return-object v2

    :cond_8
    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActiveParent with no focused child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_1
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object p0
.end method

.method public static final performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    invoke-direct {v2, p1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getFocusTransactionManager(Landroidx/compose/ui/focus/FocusTargetNode;)V

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v3, v3, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onEnter:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object p1, p1, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    iget-boolean v1, v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    if-eqz v1, :cond_0

    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    sget-object v1, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    if-ne p1, v1, :cond_1

    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return-object p1

    :cond_1
    :try_start_2
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return-object p1

    :cond_2
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    goto :goto_1

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    throw p1

    :cond_3
    :goto_1
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object p0
.end method

.method public static final performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/4 v3, 0x3

    if-ne v0, v3, :cond_13

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    const/4 v4, 0x0

    if-eqz p0, :cond_b

    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_9

    :goto_1
    if-eqz v0, :cond_9

    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_8

    move-object v5, v0

    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_8

    instance-of v7, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_1

    goto :goto_5

    :cond_1
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_7

    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v8, 0x0

    :goto_3
    if-eqz v7, :cond_6

    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v1, :cond_2

    move-object v5, v7

    goto :goto_4

    :cond_2
    if-nez v6, :cond_3

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_4
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_6
    if-ne v8, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_0

    :cond_a
    move-object v0, v4

    goto :goto_0

    :cond_b
    move-object v5, v4

    :goto_5
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    if-nez v5, :cond_c

    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object p0

    :cond_c
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    if-eq p0, v2, :cond_10

    if-ne p0, v3, :cond_f

    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    if-ne p0, v0, :cond_d

    goto :goto_6

    :cond_d
    move-object v4, p0

    :goto_6
    if-nez v4, :cond_e

    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v4

    :cond_f
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_10
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object p0

    :cond_11
    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_14
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActiveParent with no focused child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object p0
.end method

.method public static final performRequestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 18

    move-object/from16 v0, p0

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v2, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    return v4

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v7, v7, Landroidx/compose/ui/focus/FocusOwnerImpl;->onRequestFocusForOwner:Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;

    invoke-virtual {v7, v5, v5}, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    move/from16 v16, v6

    goto/16 :goto_17

    :cond_1
    const-string/jumbo v7, "visitAncestors called on an unattached node"

    const/16 v8, 0x10

    if-eqz v2, :cond_d

    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v8, [Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object v10, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v10, v10, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v10, :cond_2

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_2
    iget-object v10, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_e

    iget-object v12, v11, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v12, v12, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    iget v12, v12, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_b

    :goto_1
    if-eqz v10, :cond_b

    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_a

    move-object v13, v5

    move-object v12, v10

    :goto_2
    if-eqz v12, :cond_a

    instance-of v14, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_3

    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_6

    :cond_3
    iget v14, v12, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v14, v14, 0x400

    if-eqz v14, :cond_9

    instance-of v14, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_9

    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v14, v14, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v15, v6

    :goto_3
    if-eqz v14, :cond_8

    iget v5, v14, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_7

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v4, :cond_4

    move-object v12, v14

    goto :goto_4

    :cond_4
    if-nez v13, :cond_5

    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v13, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v12, 0x0

    :cond_6
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v14, v14, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    if-ne v15, v4, :cond_9

    :goto_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    :goto_6
    invoke-static {v13}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    goto :goto_5

    :cond_a
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    const/4 v5, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v5, v11, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v5, :cond_c

    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/node/TailModifierNode;

    move-object v10, v5

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    const/4 v5, 0x0

    goto :goto_0

    :cond_d
    const/4 v9, 0x0

    :cond_e
    new-array v5, v8, [Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v10, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v10, v10, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v10, :cond_f

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_f
    iget-object v7, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    move v11, v4

    move v12, v6

    :goto_8
    if-eqz v10, :cond_1f

    iget-object v13, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v13, v13, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    iget v13, v13, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_1d

    :goto_9
    if-eqz v7, :cond_1d

    iget v13, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_1c

    move-object v13, v7

    const/4 v14, 0x0

    :goto_a
    if-eqz v13, :cond_1c

    instance-of v15, v13, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v15, :cond_15

    check-cast v13, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_10

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_b

    :cond_10
    const/4 v15, 0x0

    :goto_b
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_13

    :cond_11
    add-int/lit8 v15, v12, 0x1

    array-length v8, v5

    if-ge v8, v15, :cond_12

    array-length v8, v5

    mul-int/lit8 v4, v8, 0x2

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v4

    :cond_12
    aput-object v13, v5, v12

    move v12, v15

    :cond_13
    if-ne v13, v2, :cond_14

    move v11, v6

    :cond_14
    const/16 v15, 0x10

    goto :goto_10

    :cond_15
    iget v4, v13, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_14

    instance-of v4, v13, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_14

    move-object v4, v13

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v8, v6

    :goto_c
    if-eqz v4, :cond_1a

    iget v15, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v15, v15, 0x400

    if-eqz v15, :cond_16

    add-int/lit8 v8, v8, 0x1

    const/4 v15, 0x1

    if-ne v8, v15, :cond_17

    move-object v13, v4

    :cond_16
    const/16 v15, 0x10

    goto :goto_e

    :cond_17
    if-nez v14, :cond_18

    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v15, 0x10

    new-array v6, v15, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v14, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    goto :goto_d

    :cond_18
    const/16 v15, 0x10

    :goto_d
    if-eqz v13, :cond_19

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v13, 0x0

    :cond_19
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :goto_e
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    goto :goto_c

    :cond_1a
    const/4 v4, 0x1

    const/16 v15, 0x10

    if-ne v8, v4, :cond_1b

    move v8, v15

    :goto_f
    const/4 v6, 0x0

    goto :goto_a

    :cond_1b
    :goto_10
    invoke-static {v14}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v8, v15

    const/4 v4, 0x1

    goto :goto_f

    :cond_1c
    move v15, v8

    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    move v8, v15

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_1d
    move v15, v8

    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    if-eqz v10, :cond_1e

    iget-object v4, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v4, :cond_1e

    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/node/TailModifierNode;

    move-object v7, v4

    goto :goto_11

    :cond_1e
    const/4 v7, 0x0

    :goto_11
    move v8, v15

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1f
    if-eqz v11, :cond_20

    if-eqz v2, :cond_20

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    move-result v6

    if-nez v6, :cond_20

    :goto_12
    const/16 v16, 0x0

    goto/16 :goto_17

    :cond_20
    new-instance v4, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v6, 0x12

    invoke-direct {v4, v6, v0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v4}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_21

    const/4 v6, 0x3

    if-eq v4, v6, :cond_21

    goto :goto_13

    :cond_21
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v4, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :goto_13
    if-eqz v9, :cond_23

    iget v4, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    iget-object v6, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    array-length v7, v6

    if-ge v4, v7, :cond_23

    :goto_14
    if-ltz v4, :cond_23

    aget-object v7, v6, v4

    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v8, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eq v8, v0, :cond_22

    goto :goto_12

    :cond_22
    sget-object v8, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    sget-object v9, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    :cond_23
    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    array-length v4, v5

    if-ge v12, v4, :cond_26

    :goto_15
    if-ltz v12, :cond_26

    aget-object v4, v5, v12

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v6, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eq v6, v0, :cond_24

    goto :goto_12

    :cond_24
    if-ne v4, v2, :cond_25

    sget-object v6, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    goto :goto_16

    :cond_25
    sget-object v6, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    :goto_16
    sget-object v7, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v4, v6, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_15

    :cond_26
    iget-object v2, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eq v2, v0, :cond_27

    goto :goto_12

    :cond_27
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    iget-object v1, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eq v1, v0, :cond_28

    goto :goto_12

    :goto_17
    return v16

    :cond_28
    const/16 v17, 0x1

    return v17
.end method

.method public static final pickChildForBackwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "visitChildren called on an unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v2, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_3

    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    move-object v7, v6

    :goto_3
    if-eqz v3, :cond_2

    instance-of v8, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v8, :cond_5

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    add-int/lit8 v8, p0, 0x1

    array-length v9, v1

    if-ge v9, v8, :cond_4

    array-length v9, v1

    mul-int/lit8 v10, v9, 0x2

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v10

    :cond_4
    aput-object v3, v1, p0

    move p0, v8

    goto :goto_6

    :cond_5
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_b

    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_b

    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v9, v4

    :goto_4
    if-eqz v8, :cond_a

    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_6

    move-object v3, v8

    goto :goto_5

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v3, v6

    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_a
    if-ne v9, v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_3

    :cond_c
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_d
    sget-object v0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    invoke-static {v1, v4, p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    sub-int/2addr p0, v5

    array-length v0, v1

    if-ge p0, v0, :cond_f

    :goto_7
    if-ltz p0, :cond_f

    aget-object v0, v1, p0

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v5

    :cond_e
    add-int/lit8 p0, p0, -0x1

    goto :goto_7

    :cond_f
    return v4
.end method

.method public static final pickChildForForwardSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "visitChildren called on an unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v2, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_3

    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    move-object v7, v6

    :goto_3
    if-eqz v3, :cond_2

    instance-of v8, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v8, :cond_5

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    add-int/lit8 v8, p0, 0x1

    array-length v9, v1

    if-ge v9, v8, :cond_4

    array-length v9, v1

    mul-int/lit8 v10, v9, 0x2

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v10

    :cond_4
    aput-object v3, v1, p0

    move p0, v8

    goto :goto_6

    :cond_5
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_b

    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_b

    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v9, v4

    :goto_4
    if-eqz v8, :cond_a

    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_6

    move-object v3, v8

    goto :goto_5

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v3, v6

    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_a
    if-ne v9, v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_3

    :cond_c
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_d
    sget-object v0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    invoke-static {v1, v4, p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v0, v4

    :goto_7
    if-ge v0, p0, :cond_f

    aget-object v2, v1, v0

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v2, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    return v4
.end method

.method public static final requestInteropFocus(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_4
    if-eqz p2, :cond_6

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0
.end method

.method public static final searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    iget-object v5, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_9

    :goto_1
    if-eqz v0, :cond_9

    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_8

    move-object v5, v0

    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_8

    instance-of v7, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_1

    goto :goto_5

    :cond_1
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_7

    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v8, v2

    :goto_3
    if-eqz v7, :cond_6

    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_2

    move-object v5, v7

    goto :goto_4

    :cond_2
    if-nez v6, :cond_3

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_4
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_6
    if-ne v8, v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_0

    :cond_a
    move-object v0, v4

    goto :goto_0

    :cond_b
    move-object v5, v4

    :goto_5
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v5, :cond_c

    sget-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->ModifierLocalBeyondBoundsLayout:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-interface {v5, v0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getCurrent(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    invoke-interface {p0, v0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getCurrent(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_c

    :cond_c
    sget-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->ModifierLocalBeyondBoundsLayout:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-interface {p0, v0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getCurrent(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    if-eqz p0, :cond_19

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-ne p1, v0, :cond_d

    :goto_6
    move v3, v0

    goto :goto_7

    :cond_d
    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    goto :goto_6

    :cond_10
    if-ne p1, v3, :cond_11

    move v3, v1

    goto :goto_7

    :cond_11
    if-ne p1, v1, :cond_18

    :goto_7
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getItemCount()I

    move-result p1

    if-lez p1, :cond_17

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getHasVisibleItems()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez p1, :cond_12

    goto/16 :goto_b

    :cond_12
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->isForward-4vf7U8o(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getLastPlacedIndex()I

    move-result p1

    goto :goto_8

    :cond_13
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getFirstPlacedIndex()I

    move-result p1

    :goto_8
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    invoke-direct {v6, p1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;-><init>(II)V

    iget-object p1, v5, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->itemsPerViewport()I

    move-result p1

    mul-int/2addr p1, v1

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getItemCount()I

    move-result v1

    if-le p1, v1, :cond_14

    move p1, v1

    :cond_14
    :goto_9
    if-nez v4, :cond_16

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    invoke-virtual {p0, v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;I)Z

    move-result v1

    if-eqz v1, :cond_16

    if-ge v2, p1, :cond_16

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget v4, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->start:I

    iget v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->end:I

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->isForward-4vf7U8o(I)Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    add-int/lit8 v4, v4, -0x1

    :goto_a
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    invoke-direct {v6, v4, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;-><init>(II)V

    iget-object v1, v5, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget-object v1, v1, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;

    invoke-direct {v1, p0, v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_9

    :cond_16
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget-object p1, p1, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    return-object v4

    :cond_17
    :goto_b
    sget-object p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->emptyBeyondBoundsScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$Companion$emptyBeyondBoundsScope$1;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported direction for beyond bounds layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_c
    return-object v4
.end method

.method public static final searchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 10

    .line 85
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 86
    iget-object v2, p2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 87
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_0

    .line 88
    const-string/jumbo v2, "visitChildren called on an unattached node"

    .line 89
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 90
    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 91
    iget-object p2, p2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 92
    iget-object v3, p2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v3, :cond_1

    .line 93
    invoke-static {v2, p2}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 94
    :cond_2
    :goto_0
    iget p2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_c

    add-int/lit8 p2, p2, -0x1

    .line 95
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/Modifier$Node;

    .line 96
    iget v5, p2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_3

    .line 97
    invoke-static {v2, p2}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p2, :cond_2

    .line 98
    iget v5, p2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    if-eqz p2, :cond_2

    .line 99
    instance-of v7, p2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_4

    .line 100
    check-cast p2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 101
    iget-boolean v7, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v7, :cond_a

    .line 102
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_5

    .line 103
    :cond_4
    iget v7, p2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_a

    .line 104
    instance-of v7, p2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_a

    .line 105
    move-object v7, p2

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 106
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v8, v4

    :goto_3
    if-eqz v7, :cond_9

    .line 107
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_8

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_5

    move-object p2, v7

    goto :goto_4

    :cond_5
    if-nez v6, :cond_6

    .line 108
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz p2, :cond_7

    .line 109
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p2, v5

    .line 110
    :cond_7
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 111
    :cond_8
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_9
    if-ne v8, v3, :cond_a

    goto :goto_2

    .line 112
    :cond_a
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p2

    goto :goto_2

    .line 113
    :cond_b
    iget-object p2, p2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    .line 114
    :cond_c
    :goto_6
    iget p2, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p2, :cond_10

    .line 115
    invoke-static {v0, p3, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_7

    .line 116
    :cond_d
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v1

    .line 117
    iget-boolean v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v1, :cond_e

    .line 118
    invoke-virtual {p1, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 119
    :cond_e
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v3

    .line 120
    :cond_f
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    :goto_7
    return v4
.end method

.method public static final searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne v0, v1, :cond_24

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 3
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 4
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_0

    .line 5
    const-string/jumbo v2, "visitChildren called on an unattached node"

    .line 6
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 8
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 9
    iget-object v4, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 10
    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    iget v4, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_d

    add-int/lit8 v4, v4, -0x1

    .line 12
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 13
    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_3

    .line 14
    invoke-static {v2, v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_2

    .line 15
    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_c

    move-object v8, v6

    :goto_3
    if-eqz v4, :cond_2

    .line 16
    instance-of v9, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_5

    .line 17
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    add-int/lit8 v9, v3, 0x1

    .line 18
    array-length v10, v1

    if-ge v10, v9, :cond_4

    .line 19
    array-length v10, v1

    mul-int/lit8 v11, v10, 0x2

    .line 20
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 21
    new-array v11, v11, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v5, v11, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v11

    .line 23
    :cond_4
    aput-object v4, v1, v3

    move v3, v9

    goto :goto_6

    .line 24
    :cond_5
    iget v9, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_b

    .line 25
    instance-of v9, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_b

    .line 26
    move-object v9, v4

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 27
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v10, v5

    :goto_4
    if-eqz v9, :cond_a

    .line 28
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_9

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v7, :cond_6

    move-object v4, v9

    goto :goto_5

    :cond_6
    if-nez v8, :cond_7

    .line 29
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v4, :cond_8

    .line 30
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v4, v6

    .line 31
    :cond_8
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 32
    :cond_9
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_a
    if-ne v10, v7, :cond_b

    goto :goto_3

    .line 33
    :cond_b
    :goto_6
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_3

    .line 34
    :cond_c
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    .line 35
    :cond_d
    sget-object v2, Landroidx/compose/ui/focus/FocusableChildrenComparator;->INSTANCE:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    .line 36
    invoke-static {v1, v5, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    if-ne p2, v7, :cond_10

    .line 37
    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 38
    iget v3, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 39
    iget v2, v2, Lkotlin/ranges/IntProgression;->last:I

    if-gt v3, v2, :cond_13

    move v4, v5

    :goto_7
    if-eqz v4, :cond_e

    .line 40
    aget-object v8, v1, v3

    .line 41
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 42
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v8, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    .line 43
    :cond_e
    aget-object v8, v1, v3

    .line 44
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v4, v7

    :cond_f
    if-eq v3, v2, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v2, 0x2

    if-ne p2, v2, :cond_23

    .line 45
    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 46
    iget v3, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 47
    iget v2, v2, Lkotlin/ranges/IntProgression;->last:I

    if-gt v3, v2, :cond_13

    move v4, v5

    :goto_8
    if-eqz v4, :cond_11

    .line 48
    aget-object v8, v1, v2

    .line 49
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 50
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {v8, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result v8

    if-eqz v8, :cond_11

    :goto_9
    return v7

    .line 51
    :cond_11
    aget-object v8, v1, v2

    .line 52
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v4, v7

    :cond_12
    if-eq v2, v3, :cond_13

    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_13
    if-ne p2, v7, :cond_14

    goto/16 :goto_10

    .line 53
    :cond_14
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object p1

    .line 54
    iget-boolean p1, p1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz p1, :cond_22

    .line 55
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 56
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez p1, :cond_15

    .line 57
    const-string/jumbo p1, "visitAncestors called on an unattached node"

    .line 58
    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 59
    :cond_15
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 60
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 61
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    :goto_a
    if-eqz p2, :cond_20

    .line 62
    iget-object v1, p2, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 63
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 64
    iget v1, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1e

    :goto_b
    if-eqz p1, :cond_1e

    .line 65
    iget v1, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1d

    move-object v1, p1

    move-object v2, v6

    :goto_c
    if-eqz v1, :cond_1d

    .line 66
    instance-of v3, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_16

    move-object v6, v1

    goto :goto_f

    .line 67
    :cond_16
    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1c

    .line 68
    instance-of v3, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_1c

    .line 69
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 70
    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v4, v5

    :goto_d
    if-eqz v3, :cond_1b

    .line 71
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_1a

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_17

    move-object v1, v3

    goto :goto_e

    :cond_17
    if-nez v2, :cond_18

    .line 72
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_18
    if-eqz v1, :cond_19

    .line 73
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v1, v6

    .line 74
    :cond_19
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 75
    :cond_1a
    :goto_e
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_d

    :cond_1b
    if-ne v4, v7, :cond_1c

    goto :goto_c

    .line 76
    :cond_1c
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_c

    .line 77
    :cond_1d
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_b

    .line 78
    :cond_1e
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 79
    iget-object p1, p2, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz p1, :cond_1f

    .line 80
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_a

    :cond_1f
    move-object p1, v6

    goto :goto_a

    :cond_20
    :goto_f
    if-nez v6, :cond_21

    goto :goto_10

    .line 81
    :cond_21
    invoke-virtual {p3, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_22
    :goto_10
    return v5

    .line 82
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 83
    const-string p1, "This function should only be used for 1-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used within a parent that has focus."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toAndroidFocusDirection-3ESFkO8(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/16 p0, 0x21

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const/16 p0, 0x82

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/16 p0, 0x11

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const/16 p0, 0x42

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne p0, v0, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toFocusDirection(I)Landroidx/compose/ui/focus/FocusDirection;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object p0

    :cond_2
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object p0

    :cond_3
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object p0

    :cond_4
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    invoke-direct {p0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object p0

    :cond_5
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object p0
.end method

.method public static final twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Ljava/lang/Boolean;
    .locals 6

    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p2, p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string v4, "ActiveParent must have a focusedChild"

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_a

    if-eq v5, v1, :cond_4

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p0, p1, v0, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_6
    if-nez p3, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p3

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne p3, v1, :cond_8

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-static {p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p3

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Searching for active node in inactive hierarchy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a
    if-nez p3, :cond_b

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p3

    :cond_b
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusTraversalKt;->generateAndSearchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p2, p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
