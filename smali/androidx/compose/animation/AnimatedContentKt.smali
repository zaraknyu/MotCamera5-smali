.class public abstract Landroidx/compose/animation/AnimatedContentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final UnspecifiedSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v0, -0x80000000

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v0, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    sput-wide v0, Landroidx/compose/animation/AnimatedContentKt;->UnspecifiedSize:J

    return-void
.end method

.method public static final AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const v2, -0x6d60584

    .line 8
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v10, 0x6

    const/4 v4, 0x4

    if-nez v2, :cond_1

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_1
    move v2, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :cond_3
    and-int/lit16 v5, v10, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v2, v5

    :cond_5
    and-int/lit16 v5, v10, 0xc00

    if-nez v5, :cond_7

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x800

    goto :goto_4

    :cond_6
    const/16 v0, 0x400

    :goto_4
    or-int/2addr v2, v0

    :cond_7
    and-int/lit16 v0, v10, 0x6000

    if-nez v0, :cond_9

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4000

    goto :goto_5

    :cond_8
    const/16 v0, 0x2000

    :goto_5
    or-int/2addr v2, v0

    :cond_9
    const/high16 v0, 0x30000

    and-int/2addr v0, v10

    move-object/from16 v5, p4

    if-nez v0, :cond_b

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v0, 0x10000

    :goto_6
    or-int/2addr v2, v0

    :cond_b
    const v0, 0x12493

    and-int/2addr v0, v2

    const v6, 0x12492

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v0, v6, :cond_c

    move v0, v11

    goto :goto_7

    :cond_c
    move v0, v12

    :goto_7
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v9, v6, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 9
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    and-int/lit8 v0, v2, 0xe

    if-ne v0, v4, :cond_d

    move v2, v11

    goto :goto_8

    :cond_d
    move v2, v12

    .line 12
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 13
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v2, :cond_e

    if-ne v6, v13, :cond_f

    .line 14
    :cond_e
    new-instance v6, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-direct {v6, v1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;)V

    .line 15
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 16
    :cond_f
    check-cast v6, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    if-ne v0, v4, :cond_10

    move v2, v11

    goto :goto_9

    :cond_10
    move v2, v12

    .line 17
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_11

    if-ne v14, v13, :cond_12

    .line 18
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 19
    new-instance v14, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 21
    :cond_12
    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-ne v0, v4, :cond_13

    move v0, v11

    goto :goto_a

    :cond_13
    move v0, v12

    .line 22
    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_14

    if-ne v2, v13, :cond_15

    .line 23
    :cond_14
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 24
    new-instance v2, Landroidx/collection/MutableScatterMap;

    invoke-direct {v2}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 25
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 26
    :cond_15
    move-object v15, v2

    check-cast v15, Landroidx/collection/MutableScatterMap;

    .line 27
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 28
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 29
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_16
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    .line 31
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 33
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    if-ne v0, v11, :cond_17

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 34
    :cond_17
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 35
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_18
    iget v0, v15, Landroidx/collection/MutableScatterMap;->_size:I

    if-ne v0, v11, :cond_19

    .line 37
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 38
    :cond_19
    invoke-virtual {v15}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 39
    :cond_1a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    :cond_1b
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    .line 41
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 42
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 43
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 44
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 45
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    move v4, v12

    .line 46
    :goto_b
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v12

    .line 47
    invoke-interface {v8, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 48
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 49
    invoke-interface {v8, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    :goto_c
    const/4 v0, -0x1

    goto :goto_d

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_b

    :cond_1d
    const/4 v4, -0x1

    goto :goto_c

    :goto_d
    if-ne v4, v0, :cond_1e

    .line 50
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 52
    :cond_1e
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-virtual {v14, v4, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1f
    :goto_e
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-virtual {v15, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_f

    :cond_20
    const v0, 0x36ce4d57

    .line 56
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v5, v14

    move-object v14, v6

    move-object v6, v3

    goto :goto_11

    :cond_21
    :goto_f
    const v0, 0x36a6df16

    .line 58
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 59
    invoke-virtual {v15}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 60
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v11, :cond_22

    .line 61
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 62
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    move-object v4, v6

    move-object v6, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v6, v3

    move-object v14, v4

    const v1, 0x34c9ce26

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object v6, v14

    move-object v14, v5

    move-object/from16 v5, p4

    goto :goto_10

    :cond_22
    move-object v5, v14

    const/4 v0, 0x0

    move-object v14, v6

    move-object v6, v3

    .line 63
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 64
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 65
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_23

    if-ne v1, v13, :cond_24

    .line 66
    :cond_23
    invoke-interface {v6, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 67
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 68
    :cond_24
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 69
    iget-object v0, v14, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    .line 70
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 71
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_25

    if-ne v3, v13, :cond_26

    .line 72
    :cond_25
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    .line 73
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 74
    :cond_26
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 75
    iget-object v1, v1, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransformImpl;

    .line 76
    invoke-static {v1, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    .line 77
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 79
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 81
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_12

    .line 83
    :cond_27
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 84
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 86
    :cond_28
    :goto_12
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 87
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    const v0, 0xee1c2b3

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 88
    iget-object v0, v14, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    move-object v2, v1

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/4 v4, 0x0

    move-object v3, v5

    const/4 v5, 0x2

    move-object/from16 v16, v2

    const/4 v2, 0x0

    move-object/from16 v18, v16

    move-object/from16 v16, v3

    move-object v3, v9

    move-object/from16 v9, v18

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v1

    .line 89
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_29

    if-ne v2, v13, :cond_2a

    .line 91
    :cond_29
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/SizeTransformImpl;

    invoke-static {v12}, Landroidx/compose/ui/draw/BlurKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 92
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 93
    :cond_2a
    move-object v12, v2

    check-cast v12, Landroidx/compose/ui/Modifier;

    const/4 v0, 0x0

    .line 94
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_13

    :cond_2b
    move-object/from16 v16, v5

    move-object v3, v9

    const/4 v0, 0x0

    move-object v9, v1

    const v1, 0xee5d1ed

    .line 95
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 96
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v1, v9

    .line 97
    :goto_13
    new-instance v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;

    invoke-direct {v0, v1, v11, v14}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 98
    invoke-interface {v12, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 99
    invoke-interface {v7, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 100
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_2c

    .line 101
    new-instance v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    invoke-direct {v1, v14}, Landroidx/compose/animation/AnimatedContentMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 102
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 103
    :cond_2c
    check-cast v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 104
    iget v2, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 105
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    .line 106
    invoke-static {v3, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 107
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 109
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    .line 110
    iget-boolean v11, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_2d

    .line 111
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    .line 112
    :cond_2d
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 113
    :goto_14
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 114
    invoke-static {v3, v1, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 115
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 118
    iget-boolean v4, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_2e

    .line 119
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 120
    :cond_2e
    invoke-static {v2, v3, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 121
    :cond_2f
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 122
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x58dcefd6

    .line 123
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 124
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_31

    move-object/from16 v5, v16

    .line 125
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const v4, 0x71c084d9

    .line 126
    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    .line 127
    invoke-virtual {v3, v4, v12, v11, v9}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v15, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    if-nez v2, :cond_30

    const v2, -0x39af5b50

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 129
    :goto_16
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_17

    :cond_30
    const v4, 0x71c08971

    .line 130
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 131
    :goto_17
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v16, v5

    goto :goto_15

    :cond_31
    const/4 v12, 0x0

    .line 132
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    .line 133
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_18

    :cond_32
    move-object v6, v3

    move-object v3, v9

    .line 134
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_18
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_33

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object v3, v6

    move-object v2, v7

    move-object v4, v8

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 135
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method

.method public static final AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/BiasAlignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 10

    move-object/from16 v7, p7

    const v0, 0x7f1ebc6d

    .line 1
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    const v2, 0x30c30

    or-int/2addr v0, v2

    const v2, 0x92493

    and-int/2addr v2, v0

    const v3, 0x92492

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 3
    sget-object v5, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$1:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    .line 4
    invoke-static {p0, p4, v7, v0}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;

    move-result-object v2

    const v8, 0x36db0

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, p2

    move-object/from16 v6, p6

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object v2, v3

    move-object v6, v5

    move-object v4, v9

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, p1

    move-object v4, p3

    move-object v6, p5

    :goto_2
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/BiasAlignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 7
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
