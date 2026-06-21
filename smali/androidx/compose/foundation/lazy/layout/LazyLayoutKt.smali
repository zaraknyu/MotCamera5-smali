.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EmptyArray:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

.field public static final LazyLayoutMeasuredItemIndexComparator:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->EmptyArray:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayoutMeasuredItemIndexComparator:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static final LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 6

    const v0, 0x775696f5

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {p4, p3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    and-int/2addr v0, v3

    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p4}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;

    invoke-direct {v1, p2, p1, p3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x58c04be3

    invoke-static {v0, v1, p4}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p4, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazySaveableStateHolderProvider(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_6

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final LazyLayoutPinnableItem(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v5, p5

    const v6, -0x7beccd10

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v5, 0xc00

    if-nez v7, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v6, v7

    :cond_7
    and-int/lit16 v7, v6, 0x493

    const/16 v8, 0x492

    if-eq v7, v8, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    and-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v7, :cond_9

    if-ne v8, v9, :cond_a

    :cond_9
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    invoke-direct {v8, v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;-><init>(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    iput v2, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->index:I

    iget-object v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->_parentPinnableContainer$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v10, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v14

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    invoke-static {v12}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v15

    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    if-eq v11, v13, :cond_e

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount:I

    if-lez v7, :cond_e

    iget-object v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_c
    :goto_7
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    iput-object v11, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    invoke-static {v12, v15, v14}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_f

    if-ne v11, v9, :cond_10

    :cond_f
    new-instance v11, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v7, 0xf

    invoke-direct {v11, v7, v8}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v11, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x70

    const/16 v8, 0x8

    or-int/2addr v6, v8

    invoke-static {v7, v4, v0, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_a

    :goto_9
    invoke-static {v12, v15, v14}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$2;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$2;-><init>(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final LazySaveableStateHolderProvider(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 11

    const v0, 0x282f3fa8

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    const v4, -0x2f73363d

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v7, Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;

    const/16 v9, 0xc00

    const/4 v10, 0x4

    move-object v8, p1

    invoke-static/range {v5 .. v10}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Ljava/lang/Object;

    move-result-object p1

    move-object v7, v8

    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput-object v4, p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->parentSaveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    new-instance v1, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v5, 0x10

    invoke-direct {v1, v5, v3, p1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v5, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v6, 0x3

    sget-object v8, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion$saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion$saver$1;

    invoke-direct {v5, v6, v8, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v6, v1, :cond_2

    :cond_1
    new-instance v6, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 v1, 0x5

    invoke-direct {v6, v1, v3, p1}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static/range {v4 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/ButtonKt$Button$2$1;

    invoke-direct {v1, p0, p1, v2}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;I)V

    const p1, 0x6f1942e8

    invoke-static {p1, v1, v7}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p1

    const/16 v1, 0x38

    invoke-static {v0, p1, v7, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_1

    :cond_3
    move-object v7, p1

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    invoke-direct {v0, p2, v2, p0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final access$SkippableItem-JVlU9Rs(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 6

    const v0, 0x55d242fd

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    and-int/lit8 v1, p5, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p5, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p5, 0xc00

    if-nez v1, :cond_7

    invoke-virtual {p4, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_8

    move v1, v3

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    and-int/2addr v0, v3

    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    new-instance v1, Landroidx/compose/foundation/CanvasKt$Canvas$1;

    invoke-direct {v1, p2, p0, p3}, Landroidx/compose/foundation/CanvasKt$Canvas$1;-><init>(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)V

    const v2, 0x3a785bde

    invoke-static {v2, v1, p4}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x30

    invoke-interface {v0, p3, v1, p4, v2}, Landroidx/compose/runtime/saveable/SaveableStateHolder;->SaveableStateProvider(Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_6

    :cond_9
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_6
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_a

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;I)V

    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I
    .locals 5

    iget v0, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v2

    iget-object v3, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v3, v2

    check-cast v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iget v4, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    if-ne v4, p0, :cond_1

    goto :goto_1

    :cond_1
    if-ge v4, p0, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v3, v1

    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iget v3, v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    if-ge p0, v3, :cond_0

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static final applyStickyItems(Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;Ljava/util/ArrayList;Landroidx/collection/MutableIntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-eqz p0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    iget v3, v1, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v3, :cond_13

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_3

    iget v4, v1, Landroidx/collection/MutableIntList;->_size:I

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    iget v7, v4, Lkotlin/ranges/IntProgression;->first:I

    iget v4, v4, Lkotlin/ranges/IntProgression;->last:I

    move v8, v5

    if-gt v7, v4, :cond_1

    :goto_0
    invoke-virtual {v1, v7}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v9

    if-gt v9, v3, :cond_1

    invoke-virtual {v1, v7}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    if-eq v7, v4, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-ne v8, v5, :cond_2

    sget-object v3, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    goto :goto_2

    :cond_2
    sget-object v3, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    new-instance v3, Landroidx/collection/MutableIntList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/collection/MutableIntList;-><init>(I)V

    invoke-virtual {v3, v8}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v11

    iget-object v12, v1, Landroidx/collection/MutableIntList;->content:[I

    iget v13, v1, Landroidx/collection/MutableIntList;->_size:I

    move v14, v6

    :goto_4
    if-ge v14, v13, :cond_5

    aget v15, v12, v14

    if-ne v15, v11, :cond_4

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, v3, Landroidx/collection/MutableIntList;->content:[I

    iget v3, v3, Landroidx/collection/MutableIntList;->_size:I

    move v8, v6

    :goto_6
    if-ge v8, v3, :cond_12

    aget v9, v1, v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v6

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v12

    if-ne v12, v9, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    move v11, v5

    :goto_8
    if-ne v11, v5, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, p6

    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p6

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    :goto_9
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v13

    const/16 p0, 0x20

    if-ne v11, v5, :cond_a

    const/high16 v11, -0x80000000

    const-wide v19, 0xffffffffL

    goto :goto_b

    :cond_a
    invoke-interface {v10, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v17

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v11

    if-eqz v11, :cond_b

    const-wide v19, 0xffffffffL

    and-long v14, v17, v19

    :goto_a
    long-to-int v11, v14

    goto :goto_b

    :cond_b
    const-wide v19, 0xffffffffL

    shr-long v14, v17, p0

    goto :goto_a

    :goto_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v6

    :goto_c
    if-ge v15, v14, :cond_d

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v5

    if-eq v5, v9, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v15, v15, 0x1

    const/4 v5, -0x1

    goto :goto_c

    :cond_d
    const/16 v16, 0x0

    :goto_d
    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    if-eqz v5, :cond_f

    invoke-interface {v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v14

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_e

    and-long v14, v14, v19

    :goto_e
    long-to-int v5, v14

    goto :goto_f

    :cond_e
    shr-long v14, v14, p0

    goto :goto_e

    :goto_f
    const/high16 v9, -0x80000000

    goto :goto_10

    :cond_f
    const/high16 v5, -0x80000000

    goto :goto_f

    :goto_10
    if-ne v11, v9, :cond_10

    neg-int v11, v2

    goto :goto_11

    :cond_10
    neg-int v14, v2

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :goto_11
    if-eq v5, v9, :cond_11

    sub-int/2addr v5, v13

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_11
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem()V

    move/from16 v5, p4

    move/from16 v9, p5

    invoke-interface {v10, v11, v6, v5, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v5, -0x1

    goto/16 :goto_6

    :cond_12
    return-object v4

    :cond_13
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object v0
.end method

.method public static final calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/room/ObservedTableVersions;)Ljava/util/List;
    .locals 10

    iget-object v0, p2, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/collection/MutableVector;

    iget p2, p2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p2, :cond_9

    new-instance p2, Lkotlin/ranges/IntRange;

    iget v4, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const-string v5, "MutableVector is empty."

    if-eqz v4, :cond_8

    iget-object v6, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v7, v6, v2

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget v7, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->start:I

    move v8, v2

    :goto_1
    if-ge v8, v4, :cond_3

    aget-object v9, v6, v8

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget v9, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->start:I

    if-ge v9, v7, :cond_2

    move v7, v9

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-ltz v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v4, "negative minIndex"

    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_2
    iget v4, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v4, :cond_7

    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v5, v0, v2

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->end:I

    move v6, v2

    :goto_3
    if-ge v6, v4, :cond_6

    aget-object v8, v0, v6

    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget v8, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->end:I

    if-le v8, v5, :cond_5

    move v5, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p2, v7, v0, v3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    sget-object p2, Lkotlin/ranges/IntRange;->EMPTY:Lkotlin/ranges/IntRange;

    :goto_4
    iget-object v0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_c

    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    iget-object v4, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->key:Ljava/lang/Object;

    iget v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->index:I

    invoke-static {v3, p0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v3

    iget v4, p2, Lkotlin/ranges/IntProgression;->first:I

    iget v5, p2, Lkotlin/ranges/IntProgression;->last:I

    if-gt v3, v5, :cond_a

    if-gt v4, v3, :cond_a

    goto :goto_6

    :cond_a
    if-ltz v3, :cond_b

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    iget p0, p2, Lkotlin/ranges/IntProgression;->first:I

    iget p1, p2, Lkotlin/ranges/IntProgression;->last:I

    if-gt p0, p1, :cond_d

    :goto_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq p0, p1, :cond_d

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_d
    return-object v1
.end method

.method public static constructor-impl$default()Landroidx/compose/runtime/MutableState;
    .locals 3

    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    return-object v1
.end method

.method public static final findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I
    .locals 1

    if-eqz p2, :cond_2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getIndex(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    return p1

    :cond_2
    :goto_0
    return p0
.end method

.method public static final lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/room/ObservedTableVersions;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/room/ObservedTableVersions;Landroidx/compose/foundation/gestures/Orientation;)V

    return-object v0
.end method

.method public static final lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final updatedVisibleItems(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;
    .locals 4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v3

    if-gt p0, v3, :cond_1

    if-gt v3, p1, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayoutMeasuredItemIndexComparator:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {p3, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method


# virtual methods
.method public getContentType(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getIntervals$1()Lcom/google/common/base/Splitter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object p0

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;->getType()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getIntervals$1()Lcom/google/common/base/Splitter;
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getIntervals$1()Lcom/google/common/base/Splitter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object p0

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    sub-int v0, p1, v0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;->getKey()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    return-object p0
.end method
