.class public abstract Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    move/from16 v6, p6

    const v4, 0x2878cc2f

    .line 6
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v6, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v6

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    and-int/lit8 v8, v6, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :cond_3
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    :cond_5
    or-int/lit16 v4, v4, 0xc00

    and-int/lit16 v8, v6, 0x6000

    if-nez v8, :cond_7

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x4000

    goto :goto_4

    :cond_6
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v4, v8

    :cond_7
    and-int/lit16 v8, v4, 0x2493

    const/16 v9, 0x2492

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v8, v9, :cond_8

    move v8, v10

    goto :goto_5

    :cond_8
    move v8, v11

    :goto_5
    and-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v9, v8}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 7
    sget-object v8, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .line 9
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v9, v12, :cond_9

    .line 10
    new-instance v9, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 11
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 13
    :cond_9
    check-cast v9, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v12, :cond_a

    .line 15
    sget-object v13, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 16
    new-instance v13, Landroidx/collection/MutableScatterMap;

    invoke-direct {v13}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 17
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 18
    :cond_a
    check-cast v13, Landroidx/collection/MutableScatterMap;

    .line 19
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 20
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 21
    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const v7, 0x3350acf9

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 22
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v7

    if-ne v7, v10, :cond_c

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 23
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 24
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    const v4, 0x3355a111

    .line 25
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 26
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move v4, v11

    goto/16 :goto_b

    :cond_c
    :goto_6
    const v7, 0x3352b9cb

    .line 27
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v4, v4, 0xe

    const/4 v7, 0x4

    if-ne v4, v7, :cond_d

    move v4, v10

    goto :goto_7

    :cond_d
    move v4, v11

    .line 28
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_e

    if-ne v7, v12, :cond_f

    .line 29
    :cond_e
    new-instance v7, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    invoke-direct {v7, v1, v11}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    .line 30
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 31
    :cond_f
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 32
    const-string/jumbo v4, "predicate"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-ltz v4, :cond_12

    move v12, v11

    move v14, v12

    .line 34
    :goto_8
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 35
    invoke-interface {v7, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v10, :cond_10

    goto :goto_9

    :cond_10
    if-eq v14, v12, :cond_11

    .line 36
    invoke-virtual {v9, v14, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v14, v14, 0x1

    :goto_9
    if-eq v12, v4, :cond_13

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, p6

    goto :goto_8

    :cond_12
    const/4 v14, 0x0

    .line 37
    :cond_13
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v4

    if-ge v14, v4, :cond_14

    .line 38
    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-gt v14, v4, :cond_14

    .line 39
    :goto_a
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    if-eq v4, v14, :cond_14

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 40
    :cond_14
    invoke-virtual {v13}, Landroidx/collection/MutableScatterMap;->clear()V

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 42
    :goto_b
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_c

    :cond_15
    move v4, v11

    const v6, 0x3355b851

    .line 43
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 44
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 45
    :goto_c
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 46
    invoke-virtual {v13, v4}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const v4, 0x3356a54c

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 47
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    const/4 v6, 0x0

    .line 48
    :goto_d
    move-object v7, v4

    check-cast v7, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v7}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_17

    invoke-virtual {v7}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v7

    .line 49
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 50
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_e

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_17
    move v6, v12

    :goto_e
    if-ne v6, v12, :cond_18

    .line 51
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 52
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 53
    :cond_18
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 54
    invoke-virtual {v9, v6, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_f
    invoke-virtual {v13}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 56
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v4, :cond_19

    .line 57
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 58
    new-instance v11, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    invoke-direct {v11, v1, v3, v7, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TweenSpec;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v12, -0x55057628

    invoke-static {v12, v11, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    invoke-virtual {v13, v7, v11}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_19
    const/4 v6, 0x0

    .line 59
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_11

    :cond_1a
    const/4 v6, 0x0

    const v4, 0x3361fb11

    .line 60
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 61
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 62
    :goto_11
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 63
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .line 64
    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    .line 66
    invoke-static {v0, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 67
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 69
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 70
    iget-boolean v14, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_1b

    .line 71
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    .line 72
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 73
    :goto_12
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 74
    invoke-static {v0, v4, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 75
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 76
    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 77
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 78
    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_1c

    .line 79
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 80
    :cond_1c
    invoke-static {v6, v0, v6, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 81
    :cond_1d
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 82
    invoke-static {v0, v11, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v4, -0xb2ca250

    .line 83
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 84
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v4, :cond_1f

    .line 85
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const v11, -0x407bf6a1

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 86
    invoke-virtual {v0, v11, v14, v7, v12}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v13, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function2;

    if-nez v7, :cond_1e

    const v7, 0x30fdb0ea

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 88
    :goto_14
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_15

    :cond_1e
    const v11, -0x407bf209

    .line 89
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v0, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 90
    :goto_15
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_1f
    const/4 v14, 0x0

    .line 91
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 92
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v8

    goto :goto_16

    .line 93
    :cond_20
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    :goto_16
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_21

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    const/4 v7, 0x0

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 94
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public static final Crossfade(Ljava/lang/Boolean;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 8

    const v0, -0x1284b420

    .line 1
    invoke-virtual {p5, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p5, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p6

    or-int/lit8 v0, v0, 0x30

    invoke-virtual {p5, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x100

    goto :goto_1

    :cond_1
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x2493

    const/16 v2, 0x2492

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p5, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 p1, v0, 0xe

    or-int/lit8 p1, p1, 0x30

    .line 2
    invoke-static {p0, p3, p5, p1}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;

    move-result-object v1

    const p1, 0xe3f0

    and-int v7, v0, p1

    .line 3
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object p5, v5

    move-object p2, v2

    goto :goto_3

    :cond_3
    move-object v3, p2

    move-object v6, p5

    move-object p5, p4

    .line 4
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object p2, p1

    :goto_3
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object p1, p0

    new-instance p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    move-object p4, p3

    move-object p3, v3

    invoke-direct/range {p0 .. p6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Boolean;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 5
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;
    .locals 14

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->metadataVersionArray:[I

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraString:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraInt:I

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->strings:[Ljava/lang/String;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->incompatibleData:[Ljava/lang/String;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->serializedIrFields:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->METADATA_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v6, Lcom/motorola/camera/PermissionCallback;

    const/16 v7, 0x12

    invoke-direct {v6, v7, v0}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->SERIALIZED_IR_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Lcom/motorola/camera/SecureDataHelper;

    const/16 v7, 0xe

    invoke-direct {v6, v7, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-boolean v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->IGNORE_OLD_METADATA:Z

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->HEADER_KINDS:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eqz v6, :cond_5

    iput-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    new-instance v6, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v6, v0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_0

    invoke-static {v6, v4, v5}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eqz v5, :cond_d

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->metadataVersionArray:[I

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->metadataVersionArray:[I

    iget v6, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraInt:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-direct {v8, v5, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    invoke-virtual {v8, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isCompatible(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->incompatibleData:[Ljava/lang/String;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eq v2, v4, :cond_a

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eq v2, v4, :cond_a

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-ne v2, v4, :cond_b

    :cond_a
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->serializedIrFields:[Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->decodeBytes([Ljava/lang/String;)[B

    :cond_c
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->incompatibleData:[Ljava/lang/String;

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->strings:[Ljava/lang/String;

    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraString:Ljava/lang/String;

    iget v13, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraInt:I

    invoke-direct/range {v6 .. v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :cond_d
    :goto_4
    move-object v6, v1

    :goto_5
    if-nez v6, :cond_e

    return-object v1

    :cond_e
    invoke-direct {v3, p0, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;-><init>(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;)V

    return-object v3
.end method
