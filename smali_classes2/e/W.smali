.class public abstract Le/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/runtime/MutableState;)F
    .locals 0

    .line 524
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static a(IJ)I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x1f

    return p1
.end method

.method public static final a(Ljava/util/ArrayList;)Le/t;
    .locals 11

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v2, Le/t;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 5
    iget-wide v3, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 7
    iget-wide v5, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 9
    iget-wide v7, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 11
    iget-wide v9, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 12
    invoke-direct/range {v2 .. v10}, Le/t;-><init>(JJJJ)V

    return-object v2

    .line 13
    :cond_0
    sget-object p0, Le/t;->h:Le/t;

    return-object p0
.end method

.method public static final a(Landroidx/compose/foundation/layout/BoxScope;ZIILe/X;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v13, p5

    move/from16 v0, p6

    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x52390bb3

    .line 525
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    and-int/lit8 v6, v0, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit16 v6, v0, 0x180

    if-nez v6, :cond_5

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v4, v6

    :cond_5
    and-int/lit8 v6, p7, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v4, v4, 0xc00

    :cond_6
    move/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v0, 0xc00

    if-nez v8, :cond_6

    move/from16 v8, p3

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_4

    :cond_8
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v4, v9

    :goto_5
    and-int/lit16 v9, v0, 0x6000

    const/16 v10, 0x4000

    if-nez v9, :cond_a

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v10

    goto :goto_6

    :cond_9
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v4, v9

    :cond_a
    and-int/lit16 v9, v4, 0x2493

    const/16 v11, 0x2492

    if-ne v9, v11, :cond_c

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_7

    .line 526
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v4, v8

    goto/16 :goto_f

    :cond_c
    :goto_7
    const/4 v9, 0x0

    if-eqz v6, :cond_d

    move v8, v9

    :cond_d
    if-eqz v2, :cond_17

    .line 527
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-interface {v1, v6, v11}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 528
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 529
    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 530
    iget v12, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 531
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    .line 532
    invoke-static {v13, v6}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 533
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 535
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 536
    iget-boolean v9, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_e

    .line 537
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 538
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 539
    :goto_8
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 540
    invoke-static {v13, v11, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 541
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 542
    invoke-static {v13, v14, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 543
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 544
    iget-boolean v9, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_f

    .line 545
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 546
    :cond_f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 547
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9, v7}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 548
    :cond_10
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 549
    invoke-static {v13, v6, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move/from16 v17, v9

    move/from16 v18, v10

    const-wide/16 v9, 0x0

    move/from16 v19, v17

    move/from16 v15, v18

    .line 550
    invoke-static/range {v6 .. v14}, Le/W;->a(Landroidx/compose/ui/Modifier;FFJJLandroidx/compose/runtime/ComposerImpl;I)V

    const/4 v9, 0x1

    .line 551
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v5, :cond_16

    const v6, -0x3aaecdfc

    .line 552
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v6, 0xe000

    and-int/2addr v6, v4

    if-ne v6, v15, :cond_11

    move v6, v9

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    :goto_9
    and-int/lit16 v7, v4, 0x380

    const/16 v8, 0x100

    if-ne v7, v8, :cond_12

    move v7, v9

    goto :goto_a

    :cond_12
    const/4 v7, 0x0

    :goto_a
    or-int/2addr v6, v7

    and-int/lit16 v4, v4, 0x1c00

    const/16 v7, 0x800

    if-ne v4, v7, :cond_13

    goto :goto_b

    :cond_13
    const/4 v9, 0x0

    :goto_b
    or-int v4, v6, v9

    .line 553
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_15

    .line 554
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v6, v4, :cond_14

    goto :goto_c

    :cond_14
    move/from16 v9, v19

    goto :goto_d

    .line 555
    :cond_15
    :goto_c
    new-instance v6, Le/V0$$ExternalSyntheticLambda4;

    move/from16 v9, v19

    invoke-direct {v6, v5, v3, v9}, Le/V0$$ExternalSyntheticLambda4;-><init>(Le/X;II)V

    .line 556
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 557
    :goto_d
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    .line 558
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 559
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v4, v6, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_e

    :cond_16
    move/from16 v9, v19

    goto :goto_e

    :cond_17
    move v9, v8

    :goto_e
    move v4, v9

    .line 560
    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_18

    new-instance v0, Le/V0$$ExternalSyntheticLambda5;

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Le/V0$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/layout/BoxScope;ZIILe/X;II)V

    .line 561
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final a(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    const-string v2, "animatedPoints"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pointAlpha"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x98b2425

    .line 14
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v8, 0x6

    const/4 v9, 0x4

    if-nez v2, :cond_1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_1
    and-int/lit8 v3, v8, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    move v10, v2

    and-int/lit8 v2, v10, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_5
    :goto_3
    const v2, 0x227fe607

    .line 16
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 17
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    .line 18
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v11, :cond_6

    const v2, 0x3a83126f    # 0.001f

    .line 19
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    .line 20
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v12, v2

    shl-long/2addr v6, v4

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    or-long/2addr v6, v12

    .line 21
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 22
    new-instance v4, Landroidx/compose/animation/core/SpringSpec;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v4, v6, v3, v2}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    .line 23
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v4

    .line 24
    :cond_6
    move-object v12, v2

    check-cast v12, Landroidx/compose/animation/core/SpringSpec;

    const/4 v13, 0x0

    .line 25
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x228002fe

    .line 26
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 27
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_7

    .line 28
    new-instance v2, Le/Z;

    invoke-direct {v2}, Le/Z;-><init>()V

    new-instance v4, Le/Z;

    invoke-direct {v4}, Le/Z;-><init>()V

    new-instance v6, Le/Z;

    invoke-direct {v6}, Le/Z;-><init>()V

    new-instance v7, Le/Z;

    invoke-direct {v7}, Le/Z;-><init>()V

    filled-new-array {v2, v4, v6, v7}, [Le/Z;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 29
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 30
    :cond_7
    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 31
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 32
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v15, 0x0

    .line 33
    invoke-static {v3, v9, v15}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v3

    const/16 v6, 0x30

    const/16 v7, 0x1c

    const/4 v4, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;

    move-result-object v2

    const v3, 0x22802f2e

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 35
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_9

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v14, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 38
    check-cast v6, Le/Z;

    .line 39
    iget-object v6, v6, Le/Z;->a:Landroidx/compose/animation/core/Animatable;

    .line 40
    iget-object v6, v6, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 41
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_8
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 43
    :cond_9
    check-cast v3, Ljava/util/List;

    .line 44
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 45
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    const v6, 0x22803cf9

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v6, v10, 0xe

    if-ne v6, v9, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    move v6, v13

    :goto_5
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 46
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_b

    if-ne v7, v11, :cond_c

    .line 47
    :cond_b
    new-instance v7, Le/V;

    invoke-direct {v7, v0, v14, v12, v15}, Le/V;-><init>(Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V

    .line 48
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_c
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 50
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 51
    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 52
    sget-object v4, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 53
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/i1;

    .line 54
    iget-object v6, v6, Le/i1;->D:Le/Z0;

    .line 55
    iget-wide v6, v6, Le/Z0;->d:J

    .line 56
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/i1;

    .line 57
    iget-object v4, v4, Le/i1;->D:Le/Z0;

    .line 58
    iget-wide v9, v4, Le/Z0;->e:J

    .line 59
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    const v12, 0x22808e03

    .line 60
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-virtual {v5, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-virtual {v5, v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    or-int/2addr v12, v14

    .line 61
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_d

    if-ne v14, v11, :cond_e

    .line 62
    :cond_d
    new-instance v16, Le/E$$ExternalSyntheticLambda1;

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v21, v9

    invoke-direct/range {v16 .. v22}, Le/E$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/State;Ljava/util/List;JJ)V

    move-object/from16 v14, v16

    .line 63
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 64
    :cond_e
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 65
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v2, 0x6

    .line 66
    invoke-static {v4, v14, v5, v2}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    .line 67
    :goto_6
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v3, Le/W$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v8, v4, v0, v1}, Le/W$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;FFJJLandroidx/compose/runtime/ComposerImpl;I)V
    .locals 16

    move-object/from16 v7, p7

    move/from16 v9, p8

    const v0, -0x6044d5db

    .line 69
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    or-int/lit16 v0, v9, 0x1b6

    and-int/lit16 v1, v9, 0xc00

    if-nez v1, :cond_0

    or-int/lit16 v0, v9, 0x5b6

    :cond_0
    and-int/lit16 v1, v9, 0x6000

    if-nez v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    and-int/lit16 v1, v0, 0x2493

    const/16 v2, 0x2492

    if-ne v1, v2, :cond_3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    goto/16 :goto_4

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, v9, 0x1

    const v2, -0xfc01

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/2addr v0, v2

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v3, p2

    move-wide/from16 v1, p3

    move-wide/from16 v12, p5

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v1, 0x2c

    int-to-float v1, v1

    const/4 v3, 0x4

    int-to-float v3, v3

    .line 73
    sget-object v4, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 74
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/i1;

    .line 75
    iget-object v5, v5, Le/i1;->w:Le/X0;

    .line 76
    iget-wide v5, v5, Le/X0;->g:J

    .line 77
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/i1;

    .line 78
    iget-object v4, v4, Le/i1;->w:Le/X0;

    .line 79
    iget-wide v10, v4, Le/X0;->h:J

    and-int/2addr v0, v2

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-wide v12, v10

    move v11, v1

    move-object v10, v2

    move-wide v1, v5

    .line 80
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    .line 81
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 82
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v6, 0x0

    .line 83
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .line 84
    iget v8, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 85
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    .line 86
    invoke-static {v7, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 87
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 89
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 90
    iget-boolean v6, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_6

    .line 91
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 93
    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 94
    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 95
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 96
    invoke-static {v7, v14, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 97
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 98
    iget-boolean v6, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_7

    .line 99
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 100
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6, v5}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 102
    :cond_8
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 103
    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 104
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 105
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 107
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v4, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    const/4 v6, 0x0

    const/16 v8, 0x1a

    const/4 v14, 0x0

    const/4 v15, 0x2

    move/from16 p2, v4

    move-object/from16 p1, v5

    move/from16 p5, v6

    move/from16 p6, v8

    move/from16 p3, v14

    move/from16 p4, v15

    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    move-object/from16 v4, p1

    .line 108
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    const v6, 0x6d2679fa

    .line 109
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v6, v8

    .line 110
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_9

    .line 111
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v8, v6, :cond_a

    .line 112
    :cond_9
    new-instance v8, Le/i$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4, v12, v13}, Le/i$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/drawscope/Stroke;J)V

    .line 113
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    :cond_a
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    .line 115
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v4, 0x6

    .line 116
    invoke-static {v5, v8, v7, v4}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    and-int/lit16 v0, v0, 0x380

    or-int v8, v4, v0

    move-object v0, v5

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 117
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x1

    .line 118
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-wide v4, v1

    move-object v1, v10

    move v2, v11

    move-wide v6, v12

    .line 119
    :goto_4
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_b

    new-instance v0, Le/i$$ExternalSyntheticLambda1;

    move v8, v9

    invoke-direct/range {v0 .. v8}, Le/i$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;FFJJI)V

    .line 120
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lf/C;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p5

    move/from16 v11, p6

    const v2, 0x7242ae1f

    .line 414
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v11

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    and-int/lit8 v4, v11, 0x30

    move-object/from16 v8, p1

    if-nez v4, :cond_3

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v2, v4

    :cond_5
    and-int/lit16 v4, v11, 0xc00

    const/16 v6, 0x12c

    if-nez v4, :cond_7

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v2, v4

    :cond_7
    and-int/lit16 v4, v11, 0x6000

    const/16 v7, 0x1c2

    if-nez v4, :cond_9

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v2, v4

    :cond_9
    const/high16 v4, 0x30000

    and-int/2addr v4, v11

    move-object/from16 v10, p3

    if-nez v4, :cond_b

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v2, v4

    :cond_b
    const/high16 v4, 0x180000

    and-int/2addr v4, v11

    move-object/from16 v9, p4

    if-nez v4, :cond_d

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/high16 v4, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v4, 0x80000

    :goto_7
    or-int/2addr v2, v4

    :cond_d
    const v4, 0x92493

    and-int/2addr v2, v4

    const v4, 0x92492

    if-ne v2, v4, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_8

    .line 415
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_14

    .line 416
    :cond_f
    :goto_8
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 417
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 418
    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    .line 419
    iget-object v4, v5, Lf/C;->f:Lf/v;

    const v12, -0x4157f047

    .line 420
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 421
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .line 422
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v12, v13, :cond_10

    .line 423
    iget-object v12, v4, Lf/v;->e:Landroidx/compose/runtime/State;

    .line 424
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 425
    :cond_10
    check-cast v12, Landroidx/compose/runtime/State;

    const/4 v14, 0x0

    .line 426
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v15, -0x4157e8ab

    .line 427
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 428
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v13, :cond_11

    .line 429
    iget-object v15, v4, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 430
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 431
    :cond_11
    check-cast v15, Landroidx/compose/runtime/State;

    .line 432
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, -0x4157e16a

    .line 433
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 434
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v13, :cond_12

    .line 435
    iget-object v7, v4, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 436
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 437
    :cond_12
    move-object/from16 v16, v7

    check-cast v16, Landroidx/compose/runtime/State;

    .line 438
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, 0x2d49f6b7

    .line 439
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 440
    iget-object v7, v5, Lf/C;->f:Lf/v;

    .line 441
    iget-object v6, v7, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 442
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/D;

    .line 443
    iget-object v3, v7, Lf/v;->i:Landroidx/compose/runtime/DerivedSnapshotState;

    iget-object v14, v7, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 444
    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/State;

    move-object/from16 v17, v6

    const v6, -0x3e447f1f

    .line 445
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 446
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_14

    if-ne v6, v13, :cond_13

    goto :goto_9

    :cond_13
    const/4 v8, 0x0

    goto :goto_e

    .line 447
    :cond_14
    :goto_9
    iget-object v3, v7, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v7, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v3

    :goto_a
    check-cast v3, Ljava/util/List;

    goto :goto_b

    :cond_15
    invoke-virtual {v14}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_a

    .line 448
    :goto_b
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/E;

    if-eqz v3, :cond_16

    .line 449
    iget-object v3, v3, Lf/E;->a:Lf/D;

    const/4 v8, 0x0

    :goto_c
    move-object v6, v3

    goto :goto_d

    .line 450
    :cond_16
    new-instance v3, Lf/D;

    const/4 v6, 0x3

    const/4 v8, 0x0

    invoke-direct {v3, v8, v6, v8}, Lf/D;-><init>(III)V

    goto :goto_c

    .line 451
    :goto_d
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 452
    :goto_e
    check-cast v6, Lf/D;

    .line 453
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v17, :cond_17

    goto :goto_f

    :cond_17
    move-object/from16 v6, v17

    .line 454
    :goto_f
    invoke-virtual {v7, v6}, Lf/v;->a(Lf/D;)I

    move-result v3

    if-gez v3, :cond_18

    const/4 v3, 0x0

    :cond_18
    const v8, -0x3e44604f

    .line 455
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v17, v8

    .line 456
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v17, :cond_19

    if-ne v8, v13, :cond_1a

    .line 457
    :cond_19
    new-instance v8, Lf/q$$ExternalSyntheticLambda1;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lf/q$$ExternalSyntheticLambda1;-><init>(Lf/v;I)V

    .line 458
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 459
    :cond_1a
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    .line 460
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x2

    .line 461
    invoke-static {v3, v8, v0, v9, v10}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/pager/DefaultPagerState;

    move-result-object v8

    const v9, -0x3e4454ce

    .line 462
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    .line 463
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1b

    if-ne v10, v13, :cond_1c

    .line 464
    :cond_1b
    new-instance v10, Lf/q$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    invoke-direct {v10, v7, v9}, Lf/q$$ExternalSyntheticLambda1;-><init>(Lf/v;I)V

    .line 465
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 466
    :cond_1c
    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    .line 467
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v11, 0x2

    .line 468
    invoke-static {v3, v10, v0, v9, v11}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/pager/DefaultPagerState;

    move-result-object v3

    .line 469
    invoke-virtual {v14}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const v10, -0x3e444bea

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    .line 470
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1d

    if-ne v10, v13, :cond_1e

    .line 471
    :cond_1d
    new-instance v10, Lf/u;

    invoke-direct {v10, v7, v8, v3, v6}, Lf/u;-><init>(Lf/v;Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/foundation/pager/DefaultPagerState;Lf/D;)V

    .line 472
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 473
    :cond_1e
    move-object v3, v10

    check-cast v3, Lf/u;

    const/4 v9, 0x0

    .line 474
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 475
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 476
    sget-object v6, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v7, 0x12c

    const/4 v10, 0x2

    .line 477
    invoke-static {v7, v9, v6, v10}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    move-object v11, v6

    goto :goto_10

    :cond_1f
    const/16 v7, 0x12c

    .line 478
    sget-object v6, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 479
    new-instance v8, Landroidx/compose/animation/core/TweenSpec;

    const/16 v9, 0x1c2

    invoke-direct {v8, v7, v9, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    move-object v11, v8

    .line 480
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, -0x4157a838

    .line 481
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 482
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_20

    if-ne v8, v13, :cond_21

    .line 483
    :cond_20
    new-instance v8, Lf/g;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v8, v3, v5, v9, v7}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 484
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 485
    :cond_21
    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x0

    .line 486
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 487
    invoke-static {v3, v6, v8, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    .line 488
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x415794fe

    .line 489
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 490
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_22

    if-ne v7, v13, :cond_23

    :cond_22
    move-object v6, v3

    move-object v3, v2

    goto :goto_11

    :cond_23
    move-object v6, v3

    goto :goto_12

    .line 491
    :goto_11
    new-instance v2, Lf/k;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lf/k;-><init>(Landroidx/lifecycle/Lifecycle;Lf/v;Lf/C;Lf/u;Lkotlin/coroutines/Continuation;)V

    .line 492
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v7, v2

    .line 493
    :goto_12
    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x0

    .line 494
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 495
    invoke-static {v6, v8, v7, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    .line 496
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 497
    invoke-static {v2, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    .line 498
    iget v3, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 499
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    .line 500
    invoke-static {v0, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 501
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 503
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 504
    iget-boolean v9, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_24

    .line 505
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    .line 506
    :cond_24
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 507
    :goto_13
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 508
    invoke-static {v0, v2, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 509
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 510
    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 511
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 512
    iget-boolean v5, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_25

    .line 513
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 514
    :cond_25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 515
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 516
    :cond_26
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 517
    invoke-static {v0, v7, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 518
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    new-instance v2, Lf/p;

    move-object/from16 v5, p2

    move-object/from16 v10, p3

    move-object/from16 v8, p4

    move-object v3, v6

    move-object v9, v15

    move-object/from16 v7, v16

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lf/p;-><init>(Lf/u;Lf/v;Lf/C;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/State;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/State;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v3, -0x438d0b06

    invoke-static {v3, v2, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    .line 520
    const-string v5, "imageToPageTransition"

    const/16 v8, 0x6c00

    const/4 v3, 0x0

    move-object v7, v0

    move-object v4, v11

    move-object v2, v12

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Boolean;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v2, 0x1

    .line 521
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 522
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_27

    new-instance v0, Lf/q$$ExternalSyntheticLambda0;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lf/q$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lf/C;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 523
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method

.method public static final a(Le/J0;Le/H0;Le/A0;Lf/C;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p10

    move/from16 v11, p11

    iget-object v0, v1, Le/J0;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v4, v1, Le/J0;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v5, v1, Le/J0;->m:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const-string v6, "callbacks"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "prioritizedExecutor"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, -0x3e6ad1c9

    .line 237
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v11, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v11

    goto :goto_1

    :cond_1
    move v6, v11

    :goto_1
    and-int/lit8 v10, v11, 0x30

    if-nez v10, :cond_3

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v6, v10

    :cond_3
    and-int/lit16 v10, v11, 0x180

    if-nez v10, :cond_5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_3

    :cond_4
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v6, v10

    :cond_5
    and-int/lit16 v10, v11, 0xc00

    if-nez v10, :cond_7

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x800

    goto :goto_4

    :cond_6
    const/16 v13, 0x400

    :goto_4
    or-int/2addr v6, v13

    goto :goto_5

    :cond_7
    move-object/from16 v10, p3

    :goto_5
    const v13, 0x36000

    or-int/2addr v13, v6

    const/high16 v14, 0x180000

    and-int/2addr v14, v11

    if-nez v14, :cond_8

    const v13, 0xb6000

    or-int/2addr v13, v6

    :cond_8
    const/high16 v6, 0x36c00000

    or-int/2addr v6, v13

    or-int/lit8 v13, p12, 0x36

    const v14, 0x12492493

    and-int/2addr v14, v6

    const v15, 0x12492492

    if-ne v14, v15, :cond_a

    and-int/lit8 v14, v13, 0x13

    const/16 v15, 0x12

    if-ne v14, v15, :cond_a

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_6

    .line 238
    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    goto/16 :goto_1c

    .line 239
    :cond_a
    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v14, v11, 0x1

    const v15, -0x380001

    if-eqz v14, :cond_c

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_7

    .line 240
    :cond_b
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/2addr v6, v15

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v12, p9

    move/from16 v19, v6

    move-object/from16 v6, p8

    goto :goto_8

    :cond_c
    :goto_7
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v14}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v14

    and-int/2addr v6, v15

    .line 241
    sget-object v15, Le/p;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 242
    sget-object v16, Le/p;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 243
    sget-object v17, Le/p;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 244
    sget-object v18, Le/p;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 245
    sget-object v19, Le/p;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v12, v19

    move/from16 v19, v6

    move-object/from16 v6, v18

    .line 246
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    const v7, -0x509e29f1

    .line 247
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 248
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 249
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v8, :cond_d

    .line 250
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v7

    .line 251
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 252
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    :cond_d
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move-object/from16 v21, v4

    const/4 v4, 0x0

    .line 254
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, -0x509e21a0

    .line 255
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 256
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    const/16 v22, 0x0

    if-ne v4, v8, :cond_e

    .line 257
    invoke-static/range {v22 .. v22}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v4

    .line 258
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 259
    :cond_e
    check-cast v4, Landroidx/compose/animation/core/Animatable;

    move-object/from16 v23, v5

    const/4 v5, 0x0

    .line 260
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 261
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v10, -0x509e16fc

    .line 262
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v10, v19, 0xe

    const/4 v11, 0x4

    if-ne v10, v11, :cond_f

    const/4 v11, 0x1

    goto :goto_9

    :cond_f
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    or-int v11, v11, v24

    move/from16 p4, v11

    .line 263
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    move/from16 v24, v13

    const/4 v13, 0x0

    if-nez p4, :cond_10

    if-ne v11, v8, :cond_11

    .line 264
    :cond_10
    new-instance v11, Le/L0;

    invoke-direct {v11, v1, v7, v4, v13}, Le/L0;-><init>(Le/J0;ILandroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    .line 265
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 266
    :cond_11
    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    .line 267
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 268
    invoke-static {v9, v5, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/j;

    const v7, -0x509df481

    .line 270
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 271
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v5, :cond_12

    if-ne v7, v8, :cond_13

    .line 272
    :cond_12
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/j;

    .line 273
    iget-object v5, v5, Le/j;->a:Le/g;

    .line 274
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h;

    .line 275
    iget-object v0, v1, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/D;

    .line 276
    new-instance v7, Le/c;

    .line 277
    invoke-static {v11}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    .line 278
    invoke-direct {v7, v0}, Le/c;-><init>(Landroidx/compose/animation/core/Animatable;)V

    .line 279
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 280
    :cond_13
    check-cast v7, Le/c;

    const/4 v5, 0x0

    .line 281
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 282
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 283
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 284
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v21, v7

    .line 285
    invoke-static {v11, v13, v9, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    .line 286
    iget v5, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move/from16 p6, v5

    .line 287
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    move-object/from16 v25, v15

    .line 288
    invoke-static {v9, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 289
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v26, v10

    .line 290
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 291
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 v27, v14

    .line 292
    iget-boolean v14, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_14

    .line 293
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    .line 294
    :cond_14
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 295
    :goto_a
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 296
    invoke-static {v9, v7, v14}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 297
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 298
    invoke-static {v9, v5, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 299
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 300
    iget-boolean v2, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_15

    .line 301
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_b

    :cond_15
    move-object/from16 v28, v4

    .line 302
    :goto_b
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 304
    :cond_16
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 305
    invoke-static {v9, v15, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v4, v24, 0xe

    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v9, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    shr-int/lit8 v15, v24, 0x3

    and-int/lit8 v15, v15, 0xe

    .line 307
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v9, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v15, -0x23f1ca03

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 308
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v8, :cond_17

    .line 309
    new-instance v15, Le/J$$ExternalSyntheticLambda4;

    const/4 v4, 0x2

    invoke-direct {v15, v4, v3}, Le/J$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 310
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    :cond_17
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    .line 312
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, -0x23f1b35f

    .line 313
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    move/from16 p6, v4

    .line 314
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez p6, :cond_19

    if-ne v4, v8, :cond_18

    goto :goto_c

    :cond_18
    move-object/from16 v20, v6

    move-object/from16 v29, v12

    goto :goto_d

    .line 315
    :cond_19
    :goto_c
    new-instance v4, Lc/V;

    move-object/from16 v20, v6

    move-object/from16 v29, v12

    const/4 v6, 0x3

    const/4 v12, 0x0

    invoke-direct {v4, v3, v12, v6}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 316
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 317
    :goto_d
    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    .line 318
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 319
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 320
    iget-object v4, v1, Le/J0;->y:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 321
    invoke-virtual {v4}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    const-string v6, "crop mode transition"

    const/16 v12, 0x30

    invoke-static {v4, v6, v9, v12}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;

    move-result-object v4

    .line 323
    sget-object v6, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 324
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const v12, -0x76089ca5

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v6, :cond_1a

    move/from16 v6, v22

    :goto_e
    const/4 v12, 0x0

    goto :goto_f

    :cond_1a
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_e

    .line 325
    :goto_f
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 326
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 327
    iget-object v12, v4, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 328
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 329
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const v3, -0x76089ca5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v12, :cond_1b

    :goto_10
    const/4 v12, 0x0

    goto :goto_11

    :cond_1b
    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_10

    .line 330
    :goto_11
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 331
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 332
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v12

    move-object/from16 p6, v3

    .line 333
    const-string v3, "$this$animateFloat"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x15a1cd20

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 334
    invoke-interface {v12}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v12, 0x1c2

    if-eqz v3, :cond_1c

    const/16 v3, 0x12c

    move-object/from16 p4, v4

    move-object/from16 p5, v6

    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 335
    invoke-static {v12, v3, v6, v4}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    const/4 v4, 0x0

    goto :goto_12

    :cond_1c
    move-object/from16 p4, v4

    move-object/from16 p5, v6

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 336
    invoke-static {v12, v4, v6, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    move-object v3, v6

    .line 337
    :goto_12
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/high16 v4, 0x30000

    move-object/from16 p7, v3

    move/from16 p9, v4

    move-object/from16 p8, v9

    .line 338
    invoke-static/range {p4 .. p9}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v3

    .line 339
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v4}, Landroidx/compose/foundation/layout/ColumnScope;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 340
    sget-object v12, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 341
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/i1;

    .line 342
    iget-object v12, v12, Le/i1;->w:Le/X0;

    move-object/from16 v30, v3

    move-object/from16 p4, v4

    .line 343
    iget-wide v3, v12, Le/X0;->f:J

    .line 344
    sget-object v12, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v6, v3, v4, v12}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 345
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    const/4 v12, 0x0

    .line 346
    invoke-static {v4, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .line 347
    iget v6, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 348
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    .line 349
    invoke-static {v9, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 350
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 p5, v6

    .line 351
    iget-boolean v6, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_1d

    .line 352
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    .line 353
    :cond_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 354
    :goto_13
    invoke-static {v9, v4, v14}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 355
    invoke-static {v9, v12, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 356
    iget-boolean v4, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_1e

    .line 357
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 358
    :cond_1e
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 359
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    :cond_1f
    invoke-static {v9, v3, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 361
    iget-object v3, v1, Le/J0;->b:Landroidx/compose/runtime/MutableState;

    .line 362
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v12, 0x0

    .line 363
    invoke-static {v11, v13, v9, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    .line 364
    iget v6, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 365
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    .line 366
    invoke-static {v9, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 367
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 368
    iget-boolean v12, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_20

    .line 369
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    .line 370
    :cond_20
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 371
    :goto_14
    invoke-static {v9, v4, v14}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 372
    invoke-static {v9, v11, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 373
    iget-boolean v4, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_21

    .line 374
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 375
    :cond_21
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 376
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 377
    :cond_22
    invoke-static {v9, v0, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 378
    invoke-static/range {p4 .. p4}, Landroidx/compose/foundation/layout/ColumnScope;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v2, -0x6d145f7b

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v4, v28

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 379
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_23

    if-ne v5, v8, :cond_24

    .line 380
    :cond_23
    new-instance v5, Le/J$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v5, v4, v2}, Le/J$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/animation/core/Animatable;I)V

    .line 381
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 382
    :cond_24
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    .line 383
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 384
    invoke-static {v0, v5}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v2, -0x6d1454f8

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v2, v19, 0x70

    const/16 v4, 0x20

    if-ne v2, v4, :cond_25

    const/4 v4, 0x1

    goto :goto_15

    :cond_25
    const/4 v4, 0x0

    .line 385
    :goto_15
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_27

    if-ne v5, v8, :cond_26

    goto :goto_16

    :cond_26
    move-object/from16 v4, p1

    goto :goto_17

    .line 386
    :cond_27
    :goto_16
    new-instance v5, Le/J$$ExternalSyntheticLambda4;

    move-object/from16 v4, p1

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Le/J$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 387
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 388
    :goto_17
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    .line 389
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 390
    invoke-static {v0, v5}, Landroidx/compose/ui/layout/ScaleFactorKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 391
    iget-object v5, v1, Le/J0;->z:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 392
    invoke-virtual {v5}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    iget-object v6, v1, Le/J0;->A:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 394
    invoke-virtual {v6}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, -0x6d14391e

    .line 395
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v14, v27

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    move/from16 v10, v26

    const/4 v11, 0x4

    if-ne v10, v11, :cond_28

    const/4 v10, 0x1

    goto :goto_18

    :cond_28
    const/4 v10, 0x0

    :goto_18
    or-int/2addr v7, v10

    const/16 v10, 0x20

    if-ne v2, v10, :cond_29

    const/4 v2, 0x1

    goto :goto_19

    :cond_29
    const/4 v2, 0x0

    :goto_19
    or-int/2addr v2, v7

    .line 396
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_2b

    if-ne v7, v8, :cond_2a

    goto :goto_1a

    :cond_2a
    const/4 v12, 0x0

    goto :goto_1b

    .line 397
    :cond_2b
    :goto_1a
    new-instance v7, Le/O0;

    const/4 v12, 0x0

    invoke-direct {v7, v14, v1, v4, v12}, Le/O0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 398
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 399
    :goto_1b
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 400
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 401
    sget-object v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 402
    new-instance v2, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object/from16 p4, v2

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p8, v7

    move-object/from16 p7, v8

    move/from16 p9, v10

    invoke-direct/range {p4 .. p9}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    move-object/from16 v5, p4

    .line 403
    new-instance v2, Le/R0;

    move-object/from16 p7, p3

    move-object/from16 p6, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p8, v4

    move-object/from16 p9, v15

    invoke-direct/range {p4 .. p9}, Le/R0;-><init>(Ljava/util/List;Le/J0;Lf/C;Le/H0;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, p4

    const v2, -0x146a90af

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    .line 404
    new-instance v1, Le/U0;

    move-object/from16 p8, p0

    move-object/from16 p6, p1

    move-object/from16 p4, v1

    move-object/from16 p7, v21

    move-object/from16 p9, v30

    invoke-direct/range {p4 .. p9}, Le/U0;-><init>(Ljava/util/List;Le/H0;Le/c;Le/J0;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    const v2, 0x26625e93

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    shr-int/lit8 v1, v19, 0x3

    and-int/lit16 v1, v1, 0x380

    const v2, 0x1b6c00

    or-int v10, v1, v2

    move-object/from16 v6, p3

    move-object v4, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    .line 405
    invoke-static/range {v4 .. v10}, Le/W;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lf/C;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    shr-int/lit8 v2, v19, 0x12

    and-int/lit8 v3, v2, 0x70

    const/16 v22, 0x6

    or-int/lit8 v3, v3, 0x6

    .line 406
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v25

    invoke-interface {v4, v15, v9, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 407
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x36

    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface {v0, v5, v15, v9, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shr-int/lit8 v2, v19, 0x1b

    and-int/lit8 v2, v2, 0xe

    .line 410
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v7, v0

    move-object v8, v1

    move-object v6, v4

    move-object v5, v14

    move-object/from16 v9, v20

    move-object/from16 v10, v29

    .line 412
    :goto_1c
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2c

    new-instance v0, Le/V0$$ExternalSyntheticLambda3;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Le/V0$$ExternalSyntheticLambda3;-><init>(Le/J0;Le/H0;Le/A0;Lf/C;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 413
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

.method public static final a(Le/n0;ILe/o1;Le/n1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    const-string v0, "state"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4928efa

    .line 121
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v13, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    and-int/lit8 v3, v13, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v13, 0x180

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v0, v5

    goto :goto_4

    :cond_5
    move-object/from16 v3, p2

    :goto_4
    and-int/lit16 v5, v13, 0xc00

    if-nez v5, :cond_6

    or-int/lit16 v0, v0, 0x400

    :cond_6
    and-int/lit16 v5, v13, 0x6000

    if-nez v5, :cond_8

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x4000

    goto :goto_5

    :cond_7
    const/16 v5, 0x2000

    :goto_5
    or-int/2addr v0, v5

    :cond_8
    and-int/lit16 v5, v0, 0x2493

    const/16 v6, 0x2492

    if-ne v5, v6, :cond_a

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_6

    .line 122
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    goto/16 :goto_f

    .line 123
    :cond_a
    :goto_6
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, v13, 0x1

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/4 v15, 0x0

    if-eqz v5, :cond_c

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit16 v0, v0, -0x1c01

    move-object/from16 v5, p3

    goto :goto_8

    :cond_c
    :goto_7
    const v5, -0x6e1b2e87

    .line 124
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v5, -0x21d30643

    .line 125
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 126
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_d

    .line 127
    new-instance v5, Le/n1;

    invoke-direct {v5}, Le/n1;-><init>()V

    .line 128
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 129
    :cond_d
    check-cast v5, Le/n1;

    .line 130
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit16 v0, v0, -0x1c01

    .line 131
    :goto_8
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    .line 132
    iget v6, v1, Le/n0;->a:I

    const/4 v7, 0x1

    if-ne v10, v6, :cond_e

    move v6, v7

    goto :goto_9

    :cond_e
    move v6, v15

    .line 133
    :goto_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 134
    iget-object v8, v5, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 135
    iget-object v9, v5, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move/from16 v16, v7

    .line 136
    iget-object v7, v5, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 137
    iget-object v2, v5, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 138
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_f

    .line 139
    invoke-static {v12}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 140
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 141
    :cond_f
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    const v15, 0x28d35007

    .line 142
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 143
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    .line 144
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v15, :cond_10

    if-ne v1, v14, :cond_11

    .line 145
    :cond_10
    new-instance v1, Le/z1;

    invoke-direct {v1, v5}, Le/z1;-><init>(Le/n1;)V

    .line 146
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 147
    :cond_11
    move-object v15, v1

    check-cast v15, Le/z1;

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 149
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v3, 0x28d35b07

    .line 150
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    .line 151
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_12

    if-ne v3, v14, :cond_13

    .line 152
    :cond_12
    new-instance v1, Landroidx/compose/ui/unit/Velocity;

    const-wide/16 v10, 0x0

    invoke-direct {v1, v10, v11}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 153
    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    .line 154
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    :cond_13
    check-cast v3, Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 157
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    .line 158
    iget-wide v10, v1, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    .line 159
    new-instance v1, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v1, v10, v11}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    const v10, 0x28d368b9

    .line 160
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    .line 161
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    move/from16 p3, v10

    const/4 v10, 0x0

    if-nez p3, :cond_14

    if-ne v11, v14, :cond_15

    .line 162
    :cond_14
    new-instance v11, Le/p1;

    invoke-direct {v11, v3, v5, v8, v10}, Le/p1;-><init>(Landroidx/compose/runtime/MutableState;Le/n1;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Lkotlin/coroutines/Continuation;)V

    .line 163
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 164
    :cond_15
    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x0

    .line 165
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 166
    invoke-static {v12, v1, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x28d3a90b

    .line 168
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    .line 169
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_16

    if-ne v11, v14, :cond_17

    .line 170
    :cond_16
    new-instance v11, Lf/g;

    const/4 v10, 0x2

    const/4 v13, 0x0

    invoke-direct {v11, v5, v6, v13, v10}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 171
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 172
    :cond_17
    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x0

    .line 173
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 174
    invoke-static {v12, v1, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 175
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 176
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v11, 0x28d3c22c

    .line 177
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 178
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_18

    if-ne v13, v14, :cond_19

    .line 179
    :cond_18
    new-instance v13, Le/O0;

    const/4 v11, 0x1

    invoke-direct {v13, v4, v8, v5, v11}, Le/O0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 180
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 181
    :cond_19
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    const/4 v4, 0x0

    .line 182
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 183
    invoke-static {v1, v10, v13}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 184
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Velocity;

    .line 185
    iget-wide v10, v4, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    .line 186
    new-instance v4, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v4, v10, v11}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 187
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x28d41b53

    .line 188
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    .line 189
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_1a

    if-ne v11, v14, :cond_1b

    .line 190
    :cond_1a
    new-instance v11, Le/v1;

    invoke-direct {v11, v3}, Le/v1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 191
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 192
    :cond_1b
    move-object/from16 v21, v11

    check-cast v21, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    const/4 v10, 0x0

    .line 193
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 194
    new-instance v17, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/16 v20, 0x0

    const/16 v22, 0x4

    move-object/from16 v18, v4

    invoke-direct/range {v17 .. v22}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    move-object/from16 v4, v17

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 195
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x28d44a62

    .line 196
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    and-int/lit16 v4, v0, 0x380

    const/16 v13, 0x100

    if-ne v4, v13, :cond_1c

    move/from16 v4, v16

    goto :goto_a

    :cond_1c
    const/4 v4, 0x0

    :goto_a
    or-int/2addr v1, v4

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    and-int/lit8 v4, v0, 0xe

    const/4 v13, 0x4

    if-ne v4, v13, :cond_1d

    move/from16 v4, v16

    goto :goto_b

    :cond_1d
    const/4 v4, 0x0

    :goto_b
    or-int/2addr v1, v4

    .line 197
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1e

    if-ne v4, v14, :cond_1f

    :cond_1e
    move v1, v0

    goto :goto_c

    :cond_1f
    move/from16 p3, v0

    move-object v2, v5

    move-object v6, v8

    move-object v8, v9

    move/from16 v13, v16

    goto :goto_d

    .line 198
    :goto_c
    new-instance v0, Le/x1;

    move-object/from16 p3, v5

    move-object v5, v2

    move-object/from16 v2, p3

    move-object/from16 v4, p0

    move/from16 p3, v1

    move-object v1, v6

    move-object v6, v8

    move-object v8, v9

    move/from16 v13, v16

    move-object v9, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v9}, Le/x1;-><init>(Landroidx/compose/runtime/MutableState;Le/n1;Le/o1;Le/n0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 199
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v0

    .line 200
    :goto_d
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 202
    invoke-static {v10, v11, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x28d610a9

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 203
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_20

    if-ne v3, v14, :cond_21

    .line 204
    :cond_20
    new-instance v3, Le/Q0$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v3, v8, v1}, Le/Q0$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 205
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    :cond_21
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x0

    .line 207
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 208
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 209
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 210
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/BlurKt;->scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 211
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 212
    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .line 213
    iget v3, v12, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 214
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    .line 215
    invoke-static {v12, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 216
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 218
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 219
    iget-boolean v6, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_22

    .line 220
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    .line 221
    :cond_22
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 222
    :goto_e
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 223
    invoke-static {v12, v1, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 224
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 225
    invoke-static {v12, v4, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 226
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 227
    iget-boolean v4, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_23

    .line 228
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 229
    :cond_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    :cond_24
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 232
    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, p3, 0x9

    and-int/lit8 v0, v0, 0x70

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v11, p4

    invoke-interface {v11, v15, v12, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v2

    .line 235
    :goto_f
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_25

    new-instance v0, Le/y1$$ExternalSyntheticLambda1;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Le/y1$$ExternalSyntheticLambda1;-><init>(Le/n0;ILe/o1;Le/n1;Lkotlin/jvm/functions/Function3;I)V

    .line 236
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method
