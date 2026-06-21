.class public abstract Landroidx/compose/ui/layout/ScaleFactorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ReusedSlotId:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/layout/ScaleFactorKt;->ReusedSlotId:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    return-void
.end method

.method public static final SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 3

    const v0, -0x4d634bd0    # -1.824273E-8f

    .line 1
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v2, :cond_5

    .line 4
    new-instance v1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 5
    sget-object v2, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;->INSTANCE:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    invoke-direct {v1, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 6
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 7
    :cond_5
    check-cast v1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x3f0

    .line 8
    invoke-static {v1, p0, p1, p2, v0}, Landroidx/compose/ui/layout/ScaleFactorKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_4

    .line 9
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    .line 10
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 7

    const v0, -0x1e845847

    .line 11
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_6

    move v1, v4

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    and-int/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12
    iget v0, p3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 13
    invoke-static {p3}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberCompositionContext(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v1

    .line 14
    invoke-static {p3, p1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 15
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    .line 16
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 17
    iget-boolean v6, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_7

    .line 18
    sget-object v6, Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    .line 19
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 20
    :goto_5
    iget-object v6, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->setRoot:Landroidx/compose/ui/layout/SubcomposeLayoutState$setRoot$1;

    .line 21
    invoke-static {p3, p0, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 22
    iget-object v6, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->setCompositionContext:Landroidx/compose/ui/layout/SubcomposeLayoutState$setRoot$1;

    .line 23
    invoke-static {p3, v1, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 24
    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->setMeasurePolicy:Landroidx/compose/ui/layout/SubcomposeLayoutState$setRoot$1;

    .line 25
    invoke-static {p3, p2, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 26
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 28
    invoke-static {p3, v5, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 29
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 30
    invoke-static {p3, v2, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 31
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 32
    iget-boolean v2, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_8

    .line 33
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 34
    :cond_8
    invoke-static {v0, p3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 35
    :cond_9
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 36
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_c

    const v0, -0x191b402

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 37
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a

    .line 39
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v0, :cond_b

    .line 40
    :cond_a
    new-instance v1, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v0, 0x16

    invoke-direct {v1, v0, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 41
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 42
    :cond_b
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p3}, Landroidx/compose/runtime/AnchoredGroupPath;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;)V

    .line 43
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :cond_c
    const v0, -0x190cf05

    .line 44
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 45
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    .line 46
    :cond_d
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_e

    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    .line 47
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final access$computeFillMinDimension-iLBOSCw(JJ)F
    .locals 4

    const/16 v0, 0x20

    shr-long v1, p2, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p0, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    div-float/2addr v1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr p2, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 6

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-float v1, v1

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p0, v2

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final boundsInWindow(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/geometry/Rect;
    .locals 16

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-float v1, v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v2, v4

    int-to-float v2, v2

    const/4 v4, 0x1

    move-object/from16 v5, p0

    invoke-interface {v0, v5, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    iget v5, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    const/4 v8, 0x0

    cmpg-float v9, v5, v8

    if-gez v9, :cond_0

    move v5, v8

    :cond_0
    cmpl-float v9, v5, v1

    if-lez v9, :cond_1

    move v5, v1

    :cond_1
    iget v9, v4, Landroidx/compose/ui/geometry/Rect;->top:F

    cmpg-float v10, v9, v8

    if-gez v10, :cond_2

    move v9, v8

    :cond_2
    cmpl-float v10, v9, v2

    if-lez v10, :cond_3

    move v9, v2

    :cond_3
    iget v10, v4, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v11, v10, v8

    if-gez v11, :cond_4

    move v10, v8

    :cond_4
    cmpl-float v11, v10, v1

    if-lez v11, :cond_5

    goto :goto_0

    :cond_5
    move v1, v10

    :goto_0
    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float v10, v4, v8

    if-gez v10, :cond_6

    goto :goto_1

    :cond_6
    move v8, v4

    :goto_1
    cmpl-float v4, v8, v2

    if-lez v4, :cond_7

    goto :goto_2

    :cond_7
    move v2, v8

    :goto_2
    cmpg-float v4, v5, v1

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    cmpg-float v4, v9, v2

    if-nez v4, :cond_9

    :goto_3
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    return-object v0

    :cond_9
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v12, v4

    shl-long/2addr v10, v3

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    invoke-interface {v0, v10, v11}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v10

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v12, v4

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v8, v4

    shl-long/2addr v12, v3

    and-long/2addr v8, v6

    or-long/2addr v8, v12

    invoke-interface {v0, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v8

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v12, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v14, v1

    shl-long/2addr v12, v3

    and-long/2addr v14, v6

    or-long/2addr v12, v14

    invoke-interface {v0, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v12

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v4, v3

    and-long/2addr v1, v6

    or-long/2addr v1, v4

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v0

    shr-long v4, v10, v3

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v4, v8, v3

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    shr-long v14, v0, v3

    long-to-int v5, v14

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    shr-long v14, v12, v3

    long-to-int v3, v14

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    and-long v3, v10, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long v4, v8, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    and-long/2addr v0, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long v5, v12, v6

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v1, v14, v5, v2, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v1
.end method

.method public static final findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of p0, v0, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public static final getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/LayoutElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/LayoutElement;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/OnGloballyPositionedElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/OnSizeChangedModifier;

    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/OnSizeChangedModifier;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final times-UQTWf7w(JJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v2, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long p1, p2, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p2, v0

    and-long/2addr p0, v3

    or-long/2addr p0, p2

    return-wide p0
.end method
