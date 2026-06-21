.class public final Landroidx/compose/foundation/StretchOverscrollNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field public _renderNode:Landroid/graphics/RenderNode;

.field public final edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

.field public final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/StretchOverscrollNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p3, p0, Landroidx/compose/foundation/StretchOverscrollNode;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method public static drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    iget-object v5, v0, Landroidx/compose/foundation/StretchOverscrollNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-wide v6, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v6

    iget-wide v7, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v7

    iput-wide v3, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    const/16 v8, 0x20

    const-wide v9, 0xffffffffL

    if-nez v7, :cond_7

    iget-object v11, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    shr-long v12, v3, v8

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    and-long/2addr v3, v9

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    int-to-long v12, v12

    shl-long/2addr v12, v8

    int-to-long v3, v3

    and-long/2addr v3, v9

    or-long/2addr v3, v12

    iput-wide v3, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    iget-object v12, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    if-eqz v12, :cond_0

    shr-long v13, v3, v8

    long-to-int v13, v13

    and-long v14, v3, v9

    long-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_0
    iget-object v12, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-eqz v12, :cond_1

    shr-long v13, v3, v8

    long-to-int v13, v13

    and-long v14, v3, v9

    long-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    iget-object v12, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-eqz v12, :cond_2

    and-long v13, v3, v9

    long-to-int v13, v13

    shr-long v14, v3, v8

    long-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    iget-object v12, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-eqz v12, :cond_3

    and-long v13, v3, v9

    long-to-int v13, v13

    shr-long v14, v3, v8

    long-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_3
    iget-object v12, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v12, :cond_4

    shr-long v13, v3, v8

    long-to-int v13, v13

    and-long v14, v3, v9

    long-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_4
    iget-object v12, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v12, :cond_5

    shr-long v13, v3, v8

    long-to-int v13, v13

    and-long v14, v3, v9

    long-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_5
    iget-object v12, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v12, :cond_6

    and-long v13, v3, v9

    long-to-int v13, v13

    shr-long v14, v3, v8

    long-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_6
    iget-object v11, v11, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v11, :cond_7

    and-long v12, v3, v9

    long-to-int v12, v12

    shr-long/2addr v3, v8

    long-to-int v3, v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_7
    if-nez v6, :cond_8

    if-nez v7, :cond_8

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToReleaseIfNeeded()V

    :cond_8
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void

    :cond_9
    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    iget-object v6, v0, Landroidx/compose/foundation/StretchOverscrollNode;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    if-nez v4, :cond_12

    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_a
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_b
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_c
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_d
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_e
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_f
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_10
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void

    :cond_12
    sget v4, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    invoke-virtual {v1, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    move-result v4

    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v7, :cond_14

    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_0

    :cond_13
    move v7, v12

    goto :goto_1

    :cond_14
    :goto_0
    move v7, v11

    :goto_1
    iget-object v13, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v13

    if-nez v13, :cond_16

    iget-object v13, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v13

    if-nez v13, :cond_16

    iget-object v13, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v13

    if-nez v13, :cond_16

    iget-object v13, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v13

    if-eqz v13, :cond_15

    goto :goto_2

    :cond_15
    move v13, v12

    goto :goto_3

    :cond_16
    :goto_2
    move v13, v11

    :goto_3
    if-eqz v7, :cond_17

    if-eqz v13, :cond_17

    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    move/from16 v16, v8

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v14, v12, v12, v15, v8}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_4

    :cond_17
    move/from16 v16, v8

    if-eqz v7, :cond_18

    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v14

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-virtual {v8, v12, v12, v15, v14}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_4

    :cond_18
    if-eqz v13, :cond_34

    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v17

    mul-int/lit8 v17, v17, 0x2

    add-int v15, v17, v15

    invoke-virtual {v8, v12, v12, v14, v15}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    :goto_4
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v8

    iget-object v14, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v14}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v14

    const/high16 v15, 0x42b40000    # 90.0f

    if-eqz v14, :cond_1a

    iget-object v14, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v14, :cond_19

    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v14}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v14

    iput-object v14, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    :cond_19
    invoke-static {v15, v14, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->finish()V

    :cond_1a
    iget-object v14, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v14}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v14

    move-wide/from16 v17, v9

    const/high16 v9, 0x43870000    # 270.0f

    if-eqz v14, :cond_1c

    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v14

    invoke-static {v9, v14, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v19

    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v21

    and-long v9, v21, v17

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v10, :cond_1b

    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v10

    iput-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    :cond_1b
    :try_start_0
    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    const/4 v14, 0x0

    :goto_5
    int-to-float v12, v11

    sub-float/2addr v12, v9

    :try_start_1
    invoke-virtual {v10, v14, v12}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    invoke-virtual {v10, v14, v12}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_6

    :cond_1c
    const/16 v19, 0x0

    :cond_1d
    :goto_6
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v9

    const/high16 v10, 0x43340000    # 180.0f

    if-eqz v9, :cond_1f

    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_1e

    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    :cond_1e
    invoke-static {v10, v9, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    :cond_1f
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v12, v9, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v14

    if-nez v14, :cond_21

    if-eqz v19, :cond_20

    goto :goto_7

    :cond_20
    const/16 v19, 0x0

    goto :goto_8

    :cond_21
    :goto_7
    move/from16 v19, v11

    :goto_8
    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v23

    shr-long v11, v23, v16

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v12, :cond_22

    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v12

    iput-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    :cond_22
    :try_start_2
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    const/4 v9, 0x0

    :goto_9
    :try_start_3
    invoke-virtual {v12, v9, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_a

    :catchall_3
    invoke-virtual {v12, v9, v11}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_23
    :goto_a
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_25

    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_24

    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    :cond_24
    const/high16 v12, 0x43870000    # 270.0f

    invoke-static {v12, v9, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    :cond_25
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    invoke-static {v15, v9, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v11

    if-nez v11, :cond_27

    if-eqz v19, :cond_26

    goto :goto_b

    :cond_26
    const/16 v19, 0x0

    goto :goto_c

    :cond_27
    :goto_b
    const/16 v19, 0x1

    :goto_c
    iget-object v11, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v11

    and-long v11, v11, v17

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v12, :cond_28

    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v12

    iput-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    :cond_28
    :try_start_4
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_d

    :catchall_4
    const/4 v9, 0x0

    :goto_d
    :try_start_5
    invoke-virtual {v12, v9, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_e

    :catchall_5
    invoke-virtual {v12, v9, v11}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_29
    :goto_e
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_2a

    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    :cond_2a
    const/4 v12, 0x0

    invoke-static {v12, v9, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_f

    :cond_2b
    const/4 v12, 0x0

    :goto_f
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    invoke-static {v10, v9, v8}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v10

    if-nez v10, :cond_2d

    if-eqz v19, :cond_2c

    goto :goto_10

    :cond_2c
    const/16 v20, 0x0

    goto :goto_11

    :cond_2d
    :goto_10
    const/16 v20, 0x1

    :goto_11
    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v10

    shr-long v10, v10, v16

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    iget-object v11, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v11, :cond_2e

    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v6, v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v11

    iput-object v11, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    :cond_2e
    :try_start_6
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :goto_12
    const/4 v14, 0x1

    goto :goto_13

    :catchall_6
    move v6, v12

    goto :goto_12

    :goto_13
    int-to-float v9, v14

    sub-float/2addr v9, v10

    :try_start_7
    invoke-virtual {v11, v6, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_14

    :catchall_7
    invoke-virtual {v11, v6, v9}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_2f
    :goto_14
    move/from16 v19, v20

    :cond_30
    if-eqz v19, :cond_31

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_31
    if-eqz v13, :cond_32

    move v5, v12

    goto :goto_15

    :cond_32
    move v5, v4

    :goto_15
    if-eqz v7, :cond_33

    move v4, v12

    :cond_33
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    new-instance v7, Landroidx/compose/ui/graphics/AndroidCanvas;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    iput-object v8, v7, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    iget-object v10, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v11, v10, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v11, v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v12, v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iget-object v11, v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v10}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    iget-object v13, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v13}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v13

    iget-object v15, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v15, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object/from16 v16, v3

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v15, v1}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v15, v6}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v15, v7}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v15, v8, v9}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    const/4 v0, 0x0

    iput-object v0, v15, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    :try_start_8
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v0, v5, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v1, v5

    neg-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, v12}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v0, v11}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v0, v10}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object v3, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    move-result v0

    move-object/from16 v2, v16

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_8
    move-exception v0

    goto :goto_16

    :catchall_9
    move-exception v0

    :try_start_b
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v5, v5

    neg-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :goto_16
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1, v12}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v1, v11}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v1, v13, v14}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object v3, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    throw v0

    :cond_34
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void
.end method

.method public final getRenderNode()Landroid/graphics/RenderNode;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/StretchOverscrollNode;->_renderNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "AndroidEdgeEffectOverscrollEffect"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/foundation/StretchOverscrollNode;->_renderNode:Landroid/graphics/RenderNode;

    :cond_0
    return-object v0
.end method
