.class public final Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-void
.end method


# virtual methods
.method public final scrollByWithOverscroll-OzD1aCk(IJ)J
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput v0, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    iget-object v4, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    if-eqz v4, :cond_2e

    iget-object v5, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v5}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollForward()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v5}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollBackward()Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_0
    iget v0, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    iget-object v1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScrollForOverscroll:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    iget-object v5, v4, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    iget-wide v6, v4, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    iget v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iget-wide v0, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    return-wide v0

    :cond_1
    iget-boolean v6, v4, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_6

    iget-object v6, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v7, v8}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-k-4lQ0M(J)F

    :cond_2
    iget-object v6, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v7, v8}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-k-4lQ0M(J)F

    :cond_3
    iget-object v6, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v7, v8}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-k-4lQ0M(J)F

    :cond_4
    iget-object v6, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v7, v8}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-k-4lQ0M(J)F

    :cond_5
    iput-boolean v9, v4, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    :cond_6
    sget v6, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->$r8$clinit:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    const/high16 v6, 0x40800000    # 4.0f

    goto :goto_0

    :cond_7
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v6, v2, v3}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long v14, v2, v12

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-nez v15, :cond_9

    move-wide/from16 p0, v12

    :cond_8
    move/from16 v12, v16

    goto/16 :goto_1

    :cond_9
    iget-object v15, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    cmpg-float v15, v15, v16

    if-gez v15, :cond_c

    invoke-virtual {v4, v10, v11}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-k-4lQ0M(J)F

    move-result v15

    move-wide/from16 p0, v12

    iget-object v12, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->finish()V

    :cond_a
    and-long v12, v10, p0

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    cmpg-float v12, v15, v12

    if-nez v12, :cond_b

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    goto :goto_1

    :cond_b
    div-float v12, v15, v6

    goto :goto_1

    :cond_c
    move-wide/from16 p0, v12

    iget-object v12, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    cmpl-float v12, v12, v16

    if-lez v12, :cond_8

    invoke-virtual {v4, v10, v11}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-k-4lQ0M(J)F

    move-result v12

    iget-object v13, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    :cond_d
    and-long v7, v10, p0

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    cmpg-float v7, v12, v7

    if-nez v7, :cond_e

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    goto :goto_1

    :cond_e
    div-float/2addr v12, v6

    :goto_1
    const/16 v13, 0x20

    shr-long v7, v2, v13

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpg-float v8, v8, v16

    if-nez v8, :cond_10

    :cond_f
    move/from16 v6, v16

    goto :goto_2

    :cond_10
    iget-object v8, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpg-float v8, v8, v16

    if-gez v8, :cond_13

    invoke-virtual {v4, v10, v11}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-k-4lQ0M(J)F

    move-result v8

    iget-object v15, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v15

    if-nez v15, :cond_11

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    :cond_11
    shr-long/2addr v10, v13

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    cmpg-float v10, v8, v10

    if-nez v10, :cond_12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_2

    :cond_12
    div-float v6, v8, v6

    goto :goto_2

    :cond_13
    iget-object v8, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpl-float v8, v8, v16

    if-lez v8, :cond_f

    invoke-virtual {v4, v10, v11}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-k-4lQ0M(J)F

    move-result v8

    iget-object v15, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    :cond_14
    shr-long/2addr v10, v13

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    cmpg-float v10, v8, v10

    if-nez v10, :cond_12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    :goto_2
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v10, v6

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move v12, v13

    move v8, v14

    int-to-long v13, v6

    shl-long/2addr v10, v12

    and-long v13, v13, p0

    or-long/2addr v10, v13

    const-wide/16 v13, 0x0

    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_15
    invoke-static {v2, v3, v10, v11}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v6, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    iget v13, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    invoke-static {v1, v6, v2, v3, v13}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    move-result-wide v13

    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v1, v13, v14}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iget-wide v13, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    move-wide/from16 v17, v10

    invoke-static {v2, v3, v13, v14}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v9

    move v6, v12

    move-wide/from16 p2, v13

    shr-long v12, v2, v6

    long-to-int v11, v12

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_16

    and-long v11, v2, p0

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_16

    goto :goto_3

    :cond_16
    shr-long v11, p2, v6

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_17

    and-long v11, p2, p0

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_17

    goto :goto_3

    :cond_17
    iget-object v11, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-eqz v11, :cond_19

    :cond_18
    invoke-virtual {v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToReleaseIfNeeded()V

    :cond_19
    :goto_3
    const/4 v11, 0x0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    shr-long v12, v9, v6

    long-to-int v0, v12

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const/high16 v12, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v12

    const/high16 v13, -0x41000000    # -0.5f

    if-lez v6, :cond_1a

    invoke-virtual {v4, v9, v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-k-4lQ0M(J)F

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_1a
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float v0, v0, v13

    if-gez v0, :cond_1b

    invoke-virtual {v4, v9, v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-k-4lQ0M(J)F

    goto :goto_4

    :cond_1b
    move v0, v11

    :goto_5
    and-long v14, v9, p0

    long-to-int v6, v14

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    cmpl-float v12, v14, v12

    if-lez v12, :cond_1c

    invoke-virtual {v4, v9, v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-k-4lQ0M(J)F

    :goto_6
    move v6, v1

    goto :goto_7

    :cond_1c
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    cmpg-float v6, v6, v13

    if-gez v6, :cond_1d

    invoke-virtual {v4, v9, v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-k-4lQ0M(J)F

    goto :goto_6

    :cond_1d
    move v6, v11

    :goto_7
    if-nez v0, :cond_1e

    if-eqz v6, :cond_1f

    :cond_1e
    move v0, v1

    :goto_8
    const-wide/16 v13, 0x0

    goto :goto_9

    :cond_1f
    move v0, v11

    goto :goto_8

    :goto_9
    invoke-static {v2, v3, v13, v14}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v2, v2, v16

    if-gez v2, :cond_20

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v2, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v2

    goto :goto_a

    :cond_20
    move v2, v11

    :goto_a
    iget-object v3, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v16

    if-lez v3, :cond_23

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    if-nez v2, :cond_22

    iget-object v2, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_b

    :cond_21
    move v2, v11

    goto :goto_c

    :cond_22
    :goto_b
    move v2, v1

    :cond_23
    :goto_c
    iget-object v3, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float v3, v3, v16

    if-gez v3, :cond_26

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    if-nez v2, :cond_25

    iget-object v2, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_d

    :cond_24
    move v2, v11

    goto :goto_e

    :cond_25
    :goto_d
    move v2, v1

    :cond_26
    :goto_e
    iget-object v3, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v16

    if-lez v3, :cond_29

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    if-nez v2, :cond_28

    iget-object v2, v5, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_f

    :cond_27
    move v2, v11

    goto :goto_10

    :cond_28
    :goto_f
    move v2, v1

    :cond_29
    :goto_10
    if-nez v2, :cond_2b

    if-eqz v0, :cond_2a

    goto :goto_11

    :cond_2a
    move v9, v11

    goto :goto_12

    :cond_2b
    :goto_11
    move v9, v1

    :goto_12
    move v0, v9

    :cond_2c
    if-eqz v0, :cond_2d

    invoke-virtual {v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_2d
    move-wide/from16 v2, p2

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_2e
    iget-object v4, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-static {v1, v4, v2, v3, v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    move-result-wide v0

    return-wide v0
.end method
