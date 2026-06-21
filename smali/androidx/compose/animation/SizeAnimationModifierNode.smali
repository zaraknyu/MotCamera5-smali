.class public final Landroidx/compose/animation/SizeAnimationModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "SourceFile"


# instance fields
.field public final animData$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public animationSpec:Landroidx/compose/animation/core/AnimationSpec;

.field public lookaheadConstraints:J

.field public lookaheadConstraintsAvailable:Z

.field public lookaheadSize:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    sget-wide v0, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    iput-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    const/4 p1, 0x0

    const/16 v0, 0xf

    invoke-static {p1, p1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraints:J

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animData$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v6, p3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-wide v6, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraints:J

    iput-boolean v2, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraintsAvailable:Z

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_3

    :cond_0
    iget-boolean v0, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraintsAvailable:Z

    if-eqz v0, :cond_1

    iget-wide v3, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraints:J

    :goto_1
    move-object/from16 v0, p2

    goto :goto_2

    :cond_1
    move-wide v3, v6

    goto :goto_1

    :goto_2
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_0

    :goto_3
    iget v0, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v3, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v4, v0

    const/16 v9, 0x20

    shl-long/2addr v4, v9

    int-to-long v10, v3

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v10, v4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-wide v10, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    move/from16 p2, v9

    move-wide v0, v10

    move-wide/from16 v16, v0

    goto/16 :goto_9

    :cond_2
    iget-wide v3, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    sget-wide v14, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    invoke-static {v3, v4, v14, v15}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v3, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    goto :goto_4

    :cond_3
    move-wide v3, v10

    :goto_4
    iget-object v14, v1, Landroidx/compose/animation/SizeAnimationModifierNode;->animData$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    if-eqz v0, :cond_7

    iget-object v5, v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/unit/IntSize;

    move/from16 p2, v9

    move-wide/from16 v16, v10

    iget-wide v9, v15, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v3, v4, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v5, Landroidx/compose/animation/core/Animatable;->isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    iget-object v9, v5, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/IntSize;

    iget-wide v9, v9, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v3, v4, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    move-object v1, v0

    goto :goto_7

    :cond_6
    :goto_6
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    iget-wide v9, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iput-wide v9, v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->startSize:J

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    move-object v1, v0

    new-instance v0, Landroidx/compose/animation/SizeAnimationModifierNode$animateTo$data$1$1;

    const/4 v5, 0x0

    move-wide v2, v3

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/SizeAnimationModifierNode$animateTo$data$1$1;-><init>(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;JLandroidx/compose/animation/SizeAnimationModifierNode;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v9, v3, v3, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_7
    move-object v0, v1

    goto :goto_8

    :cond_7
    move/from16 p2, v9

    move-wide/from16 v16, v10

    new-instance v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    new-instance v1, Landroidx/compose/animation/core/Animatable;

    new-instance v5, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    sget-object v9, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    int-to-long v10, v2

    shl-long v18, v10, p2

    and-long/2addr v10, v12

    or-long v10, v18, v10

    new-instance v2, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v2, v10, v11}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    const/16 v10, 0x8

    invoke-direct {v1, v5, v9, v2, v10}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v3, v4}, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;-><init>(Landroidx/compose/animation/core/Animatable;J)V

    :goto_8
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, v0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v0

    :goto_9
    shr-long v2, v0, p2

    long-to-int v4, v2

    and-long/2addr v0, v12

    long-to-int v5, v0

    new-instance v0, Landroidx/compose/animation/SizeAnimationModifierNode$measure$2;

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object v7, v8

    move-wide/from16 v2, v16

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/SizeAnimationModifierNode$measure$2;-><init>(Landroidx/compose/animation/SizeAnimationModifierNode;JIILandroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Placeable;)V

    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {v6, v4, v5, v1, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final onAttach()V
    .locals 2

    sget-wide v0, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    iput-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraintsAvailable:Z

    return-void
.end method

.method public final onReset()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animData$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
