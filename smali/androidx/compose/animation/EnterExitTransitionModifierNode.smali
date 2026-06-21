.class public final Landroidx/compose/animation/EnterExitTransitionModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "SourceFile"


# instance fields
.field public currentAlignment:Landroidx/compose/ui/BiasAlignment;

.field public enter:Landroidx/compose/animation/EnterTransitionImpl;

.field public exit:Landroidx/compose/animation/ExitTransitionImpl;

.field public graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

.field public lookaheadSize:J

.field public offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final sizeTransitionSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

.field public slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final slideSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

.field public transition:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object p5, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransitionImpl;

    iput-object p6, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    iput-object p7, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    sget-wide p1, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    iput-wide p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    const/4 p1, 0x0

    const/16 p2, 0xf

    invoke-static {p1, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;I)V

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeTransitionSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;I)V

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/BiasAlignment;
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    sget-object v2, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Landroidx/compose/animation/EnterExitState;Landroidx/compose/animation/EnterExitState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    iget-object v3, v3, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iput-object v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->getAlignment()Landroidx/compose/ui/BiasAlignment;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    :cond_1
    iput-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    :cond_2
    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v2

    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    const-wide v5, 0xffffffffL

    const/16 v7, 0x20

    if-eqz v2, :cond_3

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v8, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v9, v4

    shl-long/2addr v9, v7

    int-to-long v11, v8

    and-long/2addr v11, v5

    or-long v8, v9, v11

    iput-wide v8, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    shr-long v10, v8, v7

    long-to-int v0, v10

    and-long v4, v8, v5

    long-to-int v4, v4

    new-instance v5, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-interface {v1, v0, v4, v3, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    iget-object v8, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iget-object v9, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iget-object v10, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/animation/core/Transition;

    iget-object v11, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/EnterTransitionImpl;

    iget-object v12, v11, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v13, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v2, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v8, :cond_4

    new-instance v14, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    const/4 v15, 0x0

    invoke-direct {v14, v11, v13, v15}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    new-instance v15, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    const/4 v4, 0x1

    invoke-direct {v15, v11, v13, v4}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    invoke-virtual {v8, v14, v15}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v9, :cond_5

    new-instance v8, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    const/4 v14, 0x2

    invoke-direct {v8, v11, v13, v14}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    new-instance v14, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    const/4 v15, 0x3

    invoke-direct {v14, v11, v13, v15}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    invoke-virtual {v9, v8, v14}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v10}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    if-ne v9, v10, :cond_8

    iget-object v9, v12, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v9, :cond_6

    iget-wide v9, v9, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v12, v9, v10}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_3

    :cond_6
    iget-object v9, v13, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v9, v9, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v9, :cond_7

    iget-wide v9, v9, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v12, v9, v10}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    iget-object v9, v13, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v9, v9, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v9, :cond_9

    iget-wide v9, v9, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v12, v9, v10}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_3

    :cond_9
    iget-object v9, v12, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v9, :cond_7

    iget-wide v9, v9, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v12, v9, v10}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    :goto_3
    if-eqz v2, :cond_a

    sget-object v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$8:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    new-instance v10, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    const/4 v14, 0x3

    invoke-direct {v10, v12, v11, v13, v14}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v9, v10}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v2

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    new-instance v9, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    const/4 v10, 0x2

    invoke-direct {v9, v4, v8, v2, v10}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v8, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v10, v4

    shl-long/2addr v10, v7

    int-to-long v12, v8

    and-long/2addr v12, v5

    or-long/2addr v10, v12

    iget-wide v12, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    sget-wide v14, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_b

    iget-wide v12, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    goto :goto_5

    :cond_b
    move-wide v12, v10

    :goto_5
    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v4, :cond_c

    new-instance v8, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    const/4 v14, 0x0

    invoke-direct {v8, v0, v12, v13, v14}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;JI)V

    iget-object v14, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeTransitionSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    invoke-virtual {v4, v14, v8}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v4

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/IntSize;

    iget-wide v10, v4, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    :cond_d
    move-wide/from16 v14, p3

    invoke-static {v14, v15, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v19

    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    const-wide/16 v10, 0x0

    if-eqz v4, :cond_e

    sget-object v8, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$9:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    new-instance v14, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    const/4 v15, 0x1

    invoke-direct {v14, v0, v12, v13, v15}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;JI)V

    invoke-virtual {v4, v8, v14}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v14, v4, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    goto :goto_7

    :cond_e
    move-wide v14, v10

    :goto_7
    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v4, :cond_f

    new-instance v8, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    move-wide/from16 v22, v5

    const/4 v5, 0x2

    invoke-direct {v8, v0, v12, v13, v5}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;JI)V

    iget-object v5, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    invoke-virtual {v4, v5, v8}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v4, v4, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    goto :goto_8

    :cond_f
    move-wide/from16 v22, v5

    move-wide v4, v10

    :goto_8
    iget-object v0, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    if-eqz v0, :cond_10

    sget-object v21, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v16, v0

    move-wide/from16 v17, v12

    invoke-virtual/range {v16 .. v21}, Landroidx/compose/ui/BiasAlignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v10

    :cond_10
    invoke-static {v10, v11, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v4

    shr-long v6, v19, v7

    long-to-int v0, v6

    and-long v6, v19, v22

    long-to-int v6, v6

    new-instance v16, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    const/16 v23, 0x1

    move-object/from16 v17, v2

    move-wide/from16 v18, v4

    move-object/from16 v22, v9

    move-wide/from16 v20, v14

    invoke-direct/range {v16 .. v23}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Ljava/lang/Object;JJLjava/lang/Object;I)V

    move-object/from16 v2, v16

    invoke-interface {v1, v0, v6, v3, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_11
    move-wide/from16 v14, p3

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance v5, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v6}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-interface {v1, v2, v4, v3, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final onAttach()V
    .locals 2

    sget-wide v0, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    iput-wide v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    return-void
.end method
