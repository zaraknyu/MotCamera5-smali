.class public abstract Landroidx/compose/foundation/layout/OffsetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Left:Landroidx/compose/foundation/layout/Arrangement$End$1;

.field public static final SpaceAround:Landroidx/compose/foundation/layout/Arrangement$End$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Left:Landroidx/compose/foundation/layout/Arrangement$End$1;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/OffsetKt;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$End$1;

    return-void
.end method

.method public static final BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 5

    const v0, 0x6a3450fd

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    or-int/lit16 v0, p4, 0x1b0

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {p1, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/4 v1, 0x3

    invoke-direct {v2, v1, v0, p2}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x6

    invoke-static {p0, v2, p3, v0}, Landroidx/compose/ui/layout/ScaleFactorKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final Spacer(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)V
    .locals 5

    sget-object v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p0, v0, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p0, v2, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {v1, p0, v1, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public static final absoluteOffset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/OffsetPxElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/layout/OffsetPxElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static aspectRatio$default()Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/AspectRatioElement;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static final isSatisfiedBy-NN6Ew-U(JII)Z
    .locals 2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    if-gt p2, v1, :cond_0

    if-gt v0, p2, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    if-gt p3, p0, :cond_0

    if-gt p2, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static measure$default(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;I)Landroidx/compose/ui/layout/MeasureResult;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    move/from16 v5, p9

    int-to-long v6, v3

    new-array v8, v5, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    const/16 v17, 0x0

    if-ge v11, v5, :cond_7

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    move-wide/from16 v19, v6

    invoke-interface {v9}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v7, :cond_0

    move-object/from16 v17, v6

    check-cast v17, Landroidx/compose/foundation/layout/RowColumnParentData;

    :cond_0
    move-object/from16 v6, v17

    if-eqz v6, :cond_1

    iget v6, v6, Landroidx/compose/foundation/layout/RowColumnParentData;->weight:F

    goto :goto_1

    :cond_1
    move/from16 v6, v16

    :goto_1
    cmpl-float v7, v6, v16

    if-lez v7, :cond_2

    add-float/2addr v15, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_2
    sub-int v6, v1, v13

    aget-object v7, p8, v11

    if-nez v7, :cond_5

    const v14, 0x7fffffff

    if-ne v1, v14, :cond_3

    move/from16 v17, v6

    const v7, 0x7fffffff

    :goto_2
    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    if-gez v6, :cond_4

    move/from16 v17, v6

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    move v7, v6

    move/from16 v17, v7

    goto :goto_2

    :goto_3
    invoke-interface {v0, v14, v7, v2, v14}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIIZ)J

    move-result-wide v6

    invoke-interface {v9, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    goto :goto_4

    :cond_5
    move/from16 v17, v6

    :goto_4
    invoke-interface {v0, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v6

    invoke-interface {v0, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v9

    aput v6, v8, v11

    sub-int v14, v17, v6

    if-gez v14, :cond_6

    const/4 v14, 0x0

    :cond_6
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/2addr v6, v14

    add-int/2addr v13, v6

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput-object v7, p8, v11

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v6, v19

    goto :goto_0

    :cond_7
    move-wide/from16 v19, v6

    if-nez v12, :cond_8

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    goto/16 :goto_13

    :cond_8
    const v14, 0x7fffffff

    if-eq v1, v14, :cond_9

    move v3, v1

    goto :goto_6

    :cond_9
    move/from16 v3, p1

    :goto_6
    const/4 v6, 0x1

    sub-int/2addr v12, v6

    int-to-long v11, v12

    mul-long v11, v11, v19

    sub-int/2addr v3, v13

    int-to-long v6, v3

    sub-long/2addr v6, v11

    const-wide/16 v19, 0x0

    cmp-long v3, v6, v19

    if-gez v3, :cond_a

    move-wide/from16 v6, v19

    :cond_a
    long-to-float v3, v6

    div-float/2addr v3, v15

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v5, :cond_d

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v14}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v15, :cond_b

    check-cast v14, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_8

    :cond_b
    move-object/from16 v14, v17

    :goto_8
    if-eqz v14, :cond_c

    iget v14, v14, Landroidx/compose/foundation/layout/RowColumnParentData;->weight:F

    goto :goto_9

    :cond_c
    move/from16 v14, v16

    :goto_9
    mul-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v6, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v5, :cond_15

    aget-object v15, p8, v14

    if-nez v15, :cond_14

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v15}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v1

    move/from16 v18, v3

    instance-of v3, v1, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v3, :cond_e

    check-cast v1, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_b

    :cond_e
    move-object/from16 v1, v17

    :goto_b
    if-eqz v1, :cond_f

    iget v3, v1, Landroidx/compose/foundation/layout/RowColumnParentData;->weight:F

    goto :goto_c

    :cond_f
    move/from16 v3, v16

    :goto_c
    cmpl-float v19, v3, v16

    if-lez v19, :cond_10

    :goto_d
    move/from16 v19, v3

    goto :goto_e

    :cond_10
    const-string v19, "All weights <= 0 should have placeables"

    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_d

    :goto_e
    invoke-static {v6, v7}, Ljava/lang/Long;->signum(J)I

    move-result v3

    move-wide/from16 v20, v6

    int-to-long v6, v3

    sub-long v6, v20, v6

    mul-float v19, v19, v18

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v3, v19, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v1, :cond_11

    iget-boolean v1, v1, Landroidx/compose/foundation/layout/RowColumnParentData;->fill:Z

    goto :goto_f

    :cond_11
    const/4 v1, 0x1

    :goto_f
    if-eqz v1, :cond_12

    const v1, 0x7fffffff

    if-eq v3, v1, :cond_13

    move v4, v3

    :goto_10
    const/4 v1, 0x1

    goto :goto_11

    :cond_12
    const v1, 0x7fffffff

    :cond_13
    const/4 v4, 0x0

    goto :goto_10

    :goto_11
    invoke-interface {v0, v4, v3, v2, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIIZ)J

    move-result-wide v3

    invoke-interface {v15, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    invoke-interface {v0, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v15

    aput v4, v8, v14

    add-int/2addr v9, v4

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput-object v3, p8, v14

    move v10, v4

    goto :goto_12

    :cond_14
    move/from16 v18, v3

    move-wide/from16 v20, v6

    const/4 v1, 0x1

    :goto_12
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    move-object/from16 v4, p7

    move/from16 v3, v18

    goto/16 :goto_a

    :cond_15
    int-to-long v1, v9

    add-long/2addr v1, v11

    long-to-int v14, v1

    sub-int v1, p3, v13

    if-gez v14, :cond_16

    const/4 v14, 0x0

    :cond_16
    if-le v14, v1, :cond_17

    move v14, v1

    :cond_17
    :goto_13
    add-int/2addr v14, v13

    if-gez v14, :cond_18

    const/4 v14, 0x0

    :cond_18
    move/from16 v1, p1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v1, p2

    const/4 v14, 0x0

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v3, v5, [I

    move-object/from16 v2, p6

    invoke-interface {v0, v4, v8, v3, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V

    move v5, v1

    move-object/from16 v1, p8

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;[III)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public static final offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/OffsetPxElement;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/layout/OffsetPxElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/OffsetElement;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/OffsetElement;-><init>(FF)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/PaddingValuesElement;-><init>(Landroidx/compose/foundation/layout/PaddingValuesImpl;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/PaddingElement;

    invoke-direct {v0, p1, p1, p1, p1}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFF)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/PaddingElement;

    invoke-direct {v0, p1, p2, p1, p2}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFF)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    int-to-float p2, v1

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/PaddingElement;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFF)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    int-to-float p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    int-to-float p3, v1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    int-to-float p4, v1

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final toInsetsValues(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;
    .locals 4

    new-instance v0, Landroidx/compose/foundation/layout/InsetsValues;

    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/foundation/layout/InsetsValues;-><init>(IIII)V

    return-object v0
.end method
