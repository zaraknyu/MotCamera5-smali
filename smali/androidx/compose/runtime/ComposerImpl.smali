.class public final Landroidx/compose/runtime/ComposerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public _compositionData:Landroidx/compose/runtime/CompositionDataImpl;

.field public final abandonSet:Landroidx/collection/MutableSetWrapper;

.field public final applier:Landroidx/core/view/MenuHostHelper;

.field public final changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

.field public final changes:Landroidx/compose/runtime/changelist/ChangeList;

.field public childrenComposing:I

.field public final composition:Landroidx/compose/runtime/CompositionImpl;

.field public compositionToken:I

.field public compoundKeyHash:I

.field public deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field public final derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

.field public final entersStack:Landroidx/compose/runtime/IntStack;

.field public forceRecomposeScopes:Z

.field public groupNodeCount:I

.field public insertAnchor:Landroidx/compose/runtime/Anchor;

.field public insertFixups:Landroidx/compose/runtime/changelist/FixupList;

.field public insertTable:Landroidx/compose/runtime/SlotTable;

.field public inserting:Z

.field public final invalidateStack:Ljava/util/ArrayList;

.field public final invalidations:Ljava/util/ArrayList;

.field public isComposing:Z

.field public final lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field public nodeCountOverrides:[I

.field public nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

.field public nodeExpected:Z

.field public nodeIndex:I

.field public final parentContext:Landroidx/compose/runtime/CompositionContext;

.field public parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public final parentStateStack:Landroidx/compose/runtime/IntStack;

.field public pending:Landroidx/compose/runtime/Pending;

.field public final pendingStack:Ljava/util/ArrayList;

.field public providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public providerUpdates:Landroidx/collection/MutableIntObjectMap;

.field public providersInvalid:Z

.field public final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field public rGroupIndex:I

.field public reader:Landroidx/compose/runtime/SlotReader;

.field public reusing:Z

.field public reusingGroup:I

.field public final slotTable:Landroidx/compose/runtime/SlotTable;

.field public sourceMarkersEnabled:Z

.field public writer:Landroidx/compose/runtime/SlotWriter;

.field public writerHasAProvider:Z


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Landroidx/collection/MutableSetWrapper;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/core/view/MenuHostHelper;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iput-object p6, p0, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iput-object p7, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    sget-object p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Empty:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result p1

    const/4 p4, 0x0

    const/4 p6, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p6

    :goto_1
    iput-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    new-instance p1, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    const/4 p7, 0x0

    invoke-direct {p1, p7, p0}, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    new-instance p1, Landroidx/compose/runtime/SlotTable;

    invoke-direct {p1}, Landroidx/compose/runtime/SlotTable;-><init>()V

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {p2}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object p2, p1, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_3
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    new-instance p1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-direct {p1, p0, p5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    new-instance p1, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {p1}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p0
.end method

.method public static final access$invokeMovableContentLambda(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;)V
    .locals 7

    const v0, 0x78cc281

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    :try_start_0
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_3
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    const/16 v6, 0xca

    invoke-virtual {p0, v6, v1, v5, p1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/16 v5, 0x8

    invoke-direct {v0, v5, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x12d6006f

    invoke-direct {p2, v0, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->invokeComposable(Landroidx/compose/runtime/ComposerImpl;Lkotlin/jvm/functions/Function2;)V

    iput-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput v3, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput v3, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    throw p1
.end method

.method public static final reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I
    .locals 10

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v1, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v2, p1, 0x5

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    const/high16 v4, 0x8000000

    and-int/2addr v4, v3

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    aget p2, v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object p3

    const/16 v1, 0xce

    if-ne p2, v1, :cond_4

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->reference:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0, p1, v6}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz p3, :cond_0

    check-cast p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    iget-object p2, p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    iget-object p2, p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/LinkedHashSet;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p3, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v2, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-lez v2, :cond_2

    iget-object v1, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    aget v1, v1, v7

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    iget-object v1, p3, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsOutOfBandLocked()V

    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object v4

    iput-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->updateComposerInvalidations-RY85e9Y(Landroidx/collection/MutableScatterMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v2

    new-instance v1, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v1}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v1, p3, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v2, p3, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v2

    :try_start_2
    iput-object v2, p3, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v3, p3, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v4, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v1, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    iget-object v1, p3, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-boolean v8, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-eqz v8, :cond_1

    iget-object v8, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v8, v8, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v9, Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-boolean v8, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v8, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v8, v8, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v9, Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iput-boolean v6, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    iput-object v4, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    iput-object v4, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_6
    iput-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    monitor-exit v2

    throw p0

    :cond_2
    :goto_4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iget-object p3, p3, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v1, p3}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    return p0

    :cond_6
    and-int/2addr v3, v5

    if-eqz v3, :cond_e

    add-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    add-int/2addr v1, p1

    add-int/lit8 v2, p1, 0x1

    move v3, v6

    :goto_5
    if-ge v2, v1, :cond_c

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v5, v5, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v4, :cond_9

    if-eqz p2, :cond_8

    goto :goto_6

    :cond_8
    move v5, v6

    goto :goto_7

    :cond_9
    :goto_6
    move v5, v7

    :goto_7
    if-eqz v4, :cond_a

    move v8, v6

    goto :goto_8

    :cond_a
    add-int v8, p3, v3

    :goto_8
    invoke-static {p0, v2, v5, v8}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_b
    iget-object v4, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    add-int/2addr v2, v4

    goto :goto_5

    :cond_c
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_9

    :cond_d
    return v3

    :cond_e
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p0

    if-eqz p0, :cond_f

    :goto_9
    return v7

    :cond_f
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final abortRoot()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object v2, v0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iget-object v0, v0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-boolean v1, v0, Landroidx/compose/runtime/SlotReader;->closed:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V

    :cond_1
    return-void
.end method

.method public final apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v1, 0x2

    const-string v2, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object p0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {p0, v4, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    invoke-static {p0, v4, p1, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObjects-4uCC6AY(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final changed(F)Z
    .locals 2

    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(I)Z
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 16
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 18
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(J)Z
    .locals 2

    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 12
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 14
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final changed(Z)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changedInstance(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final cleanUpCompose()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iput-boolean v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    iget-object v3, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iput v1, v3, Landroidx/compose/runtime/IntStack;->tos:I

    iput v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method public final consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final createNode(Lkotlin/jvm/functions/Function0;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-nez v0, :cond_0

    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_1

    const-string v1, "createNode() can only be called when inserting"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->slots:[I

    iget v1, v1, Landroidx/compose/runtime/IntStack;->tos:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v2, v1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v4, v2, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    iget v4, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object v4, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v5, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$1:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v4, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget-object p1, v4, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v5, v4, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v6, v4, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v7, v4, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    sub-int/2addr v7, v3

    aget-object v6, v6, v7

    iget v6, v6, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v5, v6

    aput v1, p1, v5

    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    sget-object p1, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$2:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object p1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v4, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v5, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v6, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    sub-int/2addr v6, v3

    aget-object v3, v5, v6

    iget v3, v3, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v4, v3

    aput v1, p1, v4

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    return-void
.end method

.method public final currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    const/16 v4, 0xca

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v1, v1, Landroidx/compose/runtime/SlotWriter;->parent:I

    :goto_0
    if-lez v1, :cond_2

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v6, v5, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    aget v5, v6, v5

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0

    :cond_1
    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v6, v5, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v5, v6, v1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-lez v1, :cond_6

    :goto_1
    if-lez v0, :cond_6

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v5, v1, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v6, v0, 0x5

    aget v6, v5, v6

    if-ne v6, v4, :cond_5

    invoke-virtual {v1, v5, v0}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v3, v1, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_4
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v1

    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0
.end method

.method public final doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 7

    const-string v0, "Check failed"

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v2, :cond_0

    const-string v2, "Reentrant composition is not supported"

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const-string v2, "Compose:recompose"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateComposerInvalidations-RY85e9Y(Landroidx/collection/MutableScatterMap;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->startRoot()V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-static {}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/16 v6, 0xc8

    if-eqz p2, :cond_2

    :try_start_3
    invoke-virtual {p0, v6, v4}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->invokeComposable(Landroidx/compose/runtime/ComposerImpl;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :cond_2
    iget-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, v6, v4}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    const/4 p2, 0x2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v3}, Landroidx/compose/runtime/internal/Utils_jvmKt;->invokeComposable(Landroidx/compose/runtime/ComposerImpl;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipCurrentGroup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget p2, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr p2, v2

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endRoot()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean p1, p1, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-nez p1, :cond_4

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_6
    iget v3, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v3, v2

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    iput-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean p1, p1, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-nez p1, :cond_5

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final doRecordDownsFor(II)V
    .locals 1

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final end(Z)V
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->slots:[I

    iget v3, v1, Landroidx/compose/runtime/IntStack;->tos:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/16 v6, 0xcf

    const/4 v7, 0x3

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v8, v4, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v9, v4, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    aget v4, v9, v4

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_1

    if-eqz v8, :cond_0

    if-ne v4, v6, :cond_0

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->hashCode(I)I

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto/16 :goto_4

    :cond_0
    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->hashCode(I)I

    move-result v4

    xor-int/2addr v2, v4

    :goto_0
    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto/16 :goto_4

    :cond_1
    instance-of v2, v9, Ljava/lang/Enum;

    if-eqz v2, :cond_2

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_1
    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v4, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v8, v4, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v9, v4, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v10, v8, 0x5

    aget v10, v9, v10

    invoke-virtual {v4, v9, v8}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v4

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v11, v9, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-virtual {v9, v11, v8}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_5

    if-eqz v8, :cond_4

    if-ne v10, v6, :cond_4

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->hashCode(I)I

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_4

    :cond_4
    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v4

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v10}, Ljava/lang/Integer;->hashCode(I)I

    move-result v4

    xor-int/2addr v2, v4

    :goto_2
    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_4

    :cond_5
    instance-of v2, v4, Ljava/lang/Enum;

    if-eqz v2, :cond_6

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_3
    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v4, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :goto_4
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    if-eqz v4, :cond_22

    iget-object v10, v4, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    iget v11, v4, Landroidx/compose/runtime/Pending;->startIndex:I

    iget-object v12, v4, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_22

    iget-object v13, v4, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/ArrayList;

    new-instance v14, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v15

    move/from16 v16, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v15, :cond_7

    const/16 v17, -0x1

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    const/16 v17, -0x1

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_6
    if-ge v3, v15, :cond_21

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Landroidx/compose/runtime/KeyInfo;

    invoke-virtual {v14, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v21, v1

    iget v1, v8, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v10, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    if-eqz v1, :cond_8

    iget v1, v1, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    move/from16 v22, v1

    goto :goto_7

    :cond_8
    move/from16 v22, v17

    :goto_7
    iget v1, v8, Landroidx/compose/runtime/KeyInfo;->location:I

    move/from16 v23, v3

    add-int v3, v22, v11

    iget v8, v8, Landroidx/compose/runtime/KeyInfo;->nodes:I

    invoke-virtual {v9, v3, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    iget v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v8, v8, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v8, v8, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    sub-int v8, v1, v8

    add-int/2addr v8, v3

    iput v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v3, v3, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v8, v1, 0x5

    add-int/lit8 v8, v8, 0x3

    aget v3, v3, v8

    add-int/2addr v3, v1

    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(IILjava/util/List;)V

    :goto_8
    add-int/lit8 v3, v23, 0x1

    :goto_9
    move-object/from16 v1, v21

    goto :goto_6

    :cond_9
    move-object/from16 v21, v1

    move/from16 v23, v3

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v1, v19

    if-ge v1, v7, :cond_20

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/KeyInfo;

    if-eq v3, v8, :cond_1e

    iget v8, v3, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v10, v8}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/GroupInfo;

    if-eqz v8, :cond_b

    iget v8, v8, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_a

    :cond_b
    move/from16 v8, v17

    :goto_a
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v19, v1

    move/from16 v1, v20

    move-object/from16 v20, v4

    if-eq v8, v1, :cond_1c

    iget v4, v3, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v10, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/GroupInfo;

    if-eqz v4, :cond_c

    iget v4, v4, Landroidx/compose/runtime/GroupInfo;->nodeCount:I

    :goto_b
    move-object/from16 v22, v6

    goto :goto_c

    :cond_c
    iget v4, v3, Landroidx/compose/runtime/KeyInfo;->nodes:I

    goto :goto_b

    :goto_c
    add-int v6, v8, v11

    move/from16 v24, v7

    add-int v7, v1, v11

    if-lez v4, :cond_f

    move/from16 v25, v11

    iget v11, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    if-lez v11, :cond_d

    move/from16 v26, v11

    iget v11, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    move-object/from16 v27, v12

    sub-int v12, v6, v26

    if-ne v11, v12, :cond_e

    iget v11, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    sub-int v12, v7, v26

    if-ne v11, v12, :cond_e

    add-int v11, v26, v4

    iput v11, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    goto :goto_d

    :cond_d
    move-object/from16 v27, v12

    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iput v6, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    iput v7, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    iput v4, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    goto :goto_d

    :cond_f
    move/from16 v25, v11

    move-object/from16 v27, v12

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_d
    const/16 v26, 0x7

    const-wide v28, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const-wide/16 v30, 0x80

    if-le v8, v1, :cond_16

    iget-object v7, v10, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    const-wide/16 v32, 0xff

    iget-object v11, v10, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_15

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    const/4 v6, 0x0

    :goto_e
    const/16 v34, 0x8

    aget-wide v13, v11, v6

    move/from16 v38, v4

    move-object/from16 v37, v5

    not-long v4, v13

    shl-long v4, v4, v26

    and-long/2addr v4, v13

    and-long v4, v4, v28

    cmp-long v4, v4, v28

    if-eqz v4, :cond_14

    sub-int v4, v6, v12

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_13

    and-long v39, v13, v32

    cmp-long v39, v39, v30

    if-gez v39, :cond_11

    shl-int/lit8 v39, v6, 0x3

    add-int v39, v39, v5

    aget-object v39, v7, v39

    move/from16 v40, v5

    move-object/from16 v5, v39

    check-cast v5, Landroidx/compose/runtime/GroupInfo;

    move-object/from16 v39, v7

    iget v7, v5, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    move-object/from16 v41, v11

    if-gt v8, v7, :cond_10

    add-int v11, v8, v38

    if-ge v7, v11, :cond_10

    sub-int/2addr v7, v8

    add-int/2addr v7, v1

    iput v7, v5, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_10

    :cond_10
    if-gt v1, v7, :cond_12

    if-ge v7, v8, :cond_12

    add-int v7, v7, v38

    iput v7, v5, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_10

    :cond_11
    move/from16 v40, v5

    move-object/from16 v39, v7

    move-object/from16 v41, v11

    :cond_12
    :goto_10
    shr-long v13, v13, v34

    add-int/lit8 v5, v40, 0x1

    move-object/from16 v7, v39

    move-object/from16 v11, v41

    goto :goto_f

    :cond_13
    move-object/from16 v39, v7

    move-object/from16 v41, v11

    move/from16 v5, v34

    if-ne v4, v5, :cond_1d

    goto :goto_11

    :cond_14
    move-object/from16 v39, v7

    move-object/from16 v41, v11

    :goto_11
    if-eq v6, v12, :cond_1d

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v37

    move/from16 v4, v38

    move-object/from16 v7, v39

    move-object/from16 v11, v41

    goto :goto_e

    :cond_15
    move-object/from16 v37, v5

    goto/16 :goto_17

    :cond_16
    move/from16 v38, v4

    move-object/from16 v37, v5

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    const-wide/16 v32, 0xff

    if-le v1, v8, :cond_1d

    iget-object v4, v10, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v5, v10, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_1d

    const/4 v7, 0x0

    :goto_12
    aget-wide v11, v5, v7

    not-long v13, v11

    shl-long v13, v13, v26

    and-long/2addr v13, v11

    and-long v13, v13, v28

    cmp-long v13, v13, v28

    if-eqz v13, :cond_1b

    sub-int v13, v7, v6

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v34, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v13, :cond_1a

    and-long v39, v11, v32

    cmp-long v39, v39, v30

    if-gez v39, :cond_19

    shl-int/lit8 v39, v7, 0x3

    add-int v39, v39, v14

    aget-object v39, v4, v39

    move-object/from16 v40, v4

    move-object/from16 v4, v39

    check-cast v4, Landroidx/compose/runtime/GroupInfo;

    move-object/from16 v39, v5

    iget v5, v4, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    move/from16 v41, v8

    if-gt v8, v5, :cond_17

    add-int v8, v41, v38

    if-ge v5, v8, :cond_17

    sub-int v5, v5, v41

    add-int/2addr v5, v1

    iput v5, v4, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_14

    :cond_17
    add-int/lit8 v8, v41, 0x1

    if-gt v8, v5, :cond_18

    if-ge v5, v1, :cond_18

    sub-int v5, v5, v38

    iput v5, v4, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    :cond_18
    :goto_14
    const/16 v5, 0x8

    goto :goto_15

    :cond_19
    move-object/from16 v40, v4

    move-object/from16 v39, v5

    move/from16 v41, v8

    goto :goto_14

    :goto_15
    shr-long/2addr v11, v5

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v39

    move-object/from16 v4, v40

    move/from16 v8, v41

    goto :goto_13

    :cond_1a
    move-object/from16 v40, v4

    move-object/from16 v39, v5

    move/from16 v41, v8

    const/16 v5, 0x8

    if-ne v13, v5, :cond_1d

    goto :goto_16

    :cond_1b
    move-object/from16 v40, v4

    move-object/from16 v39, v5

    move/from16 v41, v8

    const/16 v5, 0x8

    :goto_16
    if-eq v7, v6, :cond_1d

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v39

    move-object/from16 v4, v40

    move/from16 v8, v41

    goto :goto_12

    :cond_1c
    move-object/from16 v37, v5

    move-object/from16 v22, v6

    move/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v27, v12

    :goto_17
    move-object/from16 v35, v13

    move-object/from16 v36, v14

    :cond_1d
    move/from16 v4, v23

    goto :goto_18

    :cond_1e
    move/from16 v19, v1

    move-object/from16 v37, v5

    move-object/from16 v22, v6

    move/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move/from16 v1, v20

    move-object/from16 v20, v4

    add-int/lit8 v4, v23, 0x1

    :goto_18
    add-int/lit8 v19, v19, 0x1

    iget v5, v3, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v10, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/GroupInfo;

    if-eqz v5, :cond_1f

    iget v3, v5, Landroidx/compose/runtime/GroupInfo;->nodeCount:I

    goto :goto_19

    :cond_1f
    iget v3, v3, Landroidx/compose/runtime/KeyInfo;->nodes:I

    :goto_19
    add-int/2addr v1, v3

    move v3, v4

    move-object/from16 v4, v20

    move-object/from16 v6, v22

    move/from16 v7, v24

    move/from16 v11, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move-object/from16 v5, v37

    move/from16 v20, v1

    goto/16 :goto_9

    :cond_20
    move/from16 v19, v1

    move/from16 v1, v20

    move-object/from16 v1, v21

    move/from16 v3, v23

    goto/16 :goto_6

    :cond_21
    move-object/from16 v21, v1

    move-object/from16 v37, v5

    move-object/from16 v27, v12

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_23

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v1, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iget v4, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v5, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v5, v5, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v5, v5, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    goto :goto_1a

    :cond_22
    move-object/from16 v21, v1

    move-object/from16 v37, v5

    const/16 v17, -0x1

    :cond_23
    :goto_1a
    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v3, -0x2

    if-nez v1, :cond_27

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v5, v4, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    iget v4, v4, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    sub-int/2addr v5, v4

    if-lez v5, :cond_27

    if-lez v5, :cond_26

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v4, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget-object v6, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v6, v6, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v7, v6, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-lez v7, :cond_25

    iget v7, v6, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v8

    if-eq v8, v7, :cond_25

    iget-boolean v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-nez v8, :cond_24

    iget-boolean v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    if-eqz v8, :cond_24

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v8, v8, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v10, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v8, 0x1

    iput-boolean v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_24
    if-lez v7, :cond_25

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v6

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v7, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v7, v7, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v8, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v7, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v8, 0x1

    iput-boolean v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_25
    iget-object v4, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v4, v4, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v6, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v6, v4, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v7, v4, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v8, v4, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v4, v4, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v8, v4

    iget v4, v4, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v7, v4

    aput v5, v6, v7

    goto :goto_1b

    :cond_26
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_27
    :goto_1b
    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_1c
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v6, v5, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v6, :cond_28

    goto :goto_1d

    :cond_28
    iget v6, v5, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v5, v5, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v6, v5, :cond_3a

    :goto_1d
    if-eqz v1, :cond_33

    if-eqz p1, :cond_2a

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object v4, v2, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v5

    if-nez v5, :cond_29

    const-string v5, "Cannot end node insertion, there are no pending operations that can be realized."

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_29
    iget-object v2, v2, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    iget-object v5, v4, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v6, v4, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    aget-object v7, v5, v6

    const/4 v8, 0x0

    aput-object v8, v5, v6

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v5, v4, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget-object v6, v2, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget v10, v2, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    iget v11, v7, Landroidx/compose/runtime/changelist/Operation;->objects:I

    sub-int/2addr v10, v11

    iget v12, v4, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    sub-int v13, v12, v11

    sub-int/2addr v12, v13

    invoke-static {v5, v13, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v4, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget v6, v4, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    sub-int v10, v6, v11

    invoke-static {v5, v10, v6, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v5, v4, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget-object v6, v2, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v2, v2, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget v7, v7, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v2, v7

    iget v8, v4, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    sub-int v10, v8, v7

    invoke-static {v2, v10, v8, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto(III[I[I)V

    iget v2, v4, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    sub-int/2addr v2, v11

    iput v2, v4, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    iget v2, v4, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    sub-int/2addr v2, v7

    iput v2, v4, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    const/4 v2, 0x1

    :cond_2a
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v5, v4, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v5, :cond_2b

    goto :goto_1e

    :cond_2b
    const-string v5, "Unbalanced begin/end empty"

    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1e
    iget v5, v4, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v5, v4, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v4, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v4, :cond_2c

    goto/16 :goto_22

    :cond_2c
    rsub-int/lit8 v4, v5, -0x2

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object v6, v6, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v6}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v7, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget-object v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v8, v8, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v10, v8, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-lez v10, :cond_2e

    iget v10, v8, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v3

    if-eq v3, v10, :cond_2e

    iget-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-nez v3, :cond_2d

    iget-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v11, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_2d
    if-lez v10, :cond_2e

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v7, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v7, v7, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v10, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v8, 0x1

    iput-boolean v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    goto :goto_1f

    :cond_2e
    const/4 v8, 0x1

    :goto_1f
    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v7, Landroidx/compose/runtime/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlots;

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v8, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObjects-4uCC6AY(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    move v3, v7

    goto/16 :goto_20

    :cond_2f
    const/4 v7, 0x0

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v7, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget-object v10, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v10, v10, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v11, v10, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-lez v11, :cond_31

    iget v11, v10, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v3

    if-eq v3, v11, :cond_31

    iget-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-nez v3, :cond_30

    iget-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    if-eqz v3, :cond_30

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v12, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_30
    if-lez v11, :cond_31

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v10, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v10, v10, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v11, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v10, v7, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_31
    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v7, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget v7, v3, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    iget-object v9, v3, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/16 v18, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    iget v9, v9, Landroidx/compose/runtime/changelist/Operation;->objects:I

    sub-int/2addr v7, v9

    iget-object v3, v3, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    aput-object v5, v3, v7

    add-int/lit8 v5, v7, 0x1

    aput-object v6, v3, v5

    add-int/lit8 v7, v7, 0x2

    aput-object v8, v3, v7

    new-instance v3, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {v3}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    const/4 v3, 0x0

    :goto_20
    iput-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v5, v5, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-nez v5, :cond_32

    goto :goto_22

    :cond_32
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    goto :goto_22

    :cond_33
    if-eqz p1, :cond_34

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_34
    iget-object v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v3, v3, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v4, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    move/from16 v5, v17

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v6

    if-gt v6, v3, :cond_35

    goto :goto_21

    :cond_35
    const-string v6, "Missed recording an endGroup"

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_21
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v5

    if-ne v5, v3, :cond_36

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v4}, Landroidx/compose/runtime/IntStack;->pop()I

    iget-object v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    :cond_36
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v4

    if-eq v2, v4, :cond_37

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    :cond_37
    if-eqz p1, :cond_38

    const/4 v2, 0x1

    :cond_38
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    :goto_22
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Pending;

    if-eqz v3, :cond_39

    if-nez v1, :cond_39

    iget v1, v3, Landroidx/compose/runtime/Pending;->groupIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroidx/compose/runtime/Pending;->groupIndex:I

    :cond_39
    iput-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void

    :cond_3a
    move/from16 v5, v17

    const/4 v8, 0x0

    const/16 v18, 0x1

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v7

    invoke-virtual {v9, v4, v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v7, v7, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    move-object/from16 v10, v37

    invoke-static {v6, v7, v10}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(IILjava/util/List;)V

    goto/16 :goto_1c
.end method

.method public final endDefaults()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :cond_0
    return-void
.end method

.method public final endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    iget v5, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v6, v5, -0x9

    iput v6, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iget-object v7, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v7, :cond_5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    iget-object v5, v7, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v8, v7, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v9, v7, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_5

    const/4 v11, 0x0

    :goto_1
    aget-wide v12, v9, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_3

    const-wide/16 v17, 0xff

    and-long v17, v12, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_2

    shl-int/lit8 v17, v11, 0x3

    add-int v17, v17, v4

    aget-object v18, v5, v17

    aget v2, v8, v17

    if-eq v2, v6, :cond_2

    new-instance v2, Landroidx/compose/foundation/ScrollNode$measure$1;

    const/4 v4, 0x1

    invoke-direct {v2, v6, v4, v1, v7}, Landroidx/compose/foundation/ScrollNode$measure$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    shr-long/2addr v12, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-ne v14, v15, :cond_5

    :cond_4
    if-eq v11, v10, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v2, 0x0

    :goto_4
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    if-eqz v2, :cond_6

    iget-object v5, v4, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v5, v5, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v6, Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObjects-4uCC6AY(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    :cond_6
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit16 v5, v2, 0x200

    if-eqz v5, :cond_7

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    iget-object v2, v4, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$EndResumingScope;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndResumingScope;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v7, 0x0

    invoke-static {v2, v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    :cond_7
    if-eqz v1, :cond_c

    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_8

    goto :goto_8

    :cond_8
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-eqz v2, :cond_c

    :goto_5
    iget-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-nez v2, :cond_b

    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v3, v2, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    goto :goto_6

    :cond_a
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    :goto_6
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    :cond_b
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    move-object v4, v1

    :goto_7
    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v4, 0x0

    goto :goto_7

    :goto_9
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v4
.end method

.method public final endRoot()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime_release()V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-boolean v2, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v2, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iput-boolean v0, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget v1, v1, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Missed recording an endGroup()"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Start/end imbalance"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    return-void
.end method

.method public final enterGroup(ZLandroidx/compose/runtime/Pending;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :cond_0
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    return-void
.end method

.method public final forceFreshInsertTable()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v1, v0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_1
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    return-void
.end method

.method public final getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultsInvalid()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getSkipping()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final insertMovableContentGuarded(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    :try_start_0
    iput-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$ResetSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ResetSlots;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object p1, p1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$EndMovableContentPlacement;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndMovableContentPlacement;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iput v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    iget-object v0, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    throw p1
.end method

.method public final nextSlot()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz p0, :cond_1

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public final rGroupIndexOf(I)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final recompose-aFTiNEg$runtime_release(Landroidx/collection/MutableScatterMap;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Expected applyChanges() to have been called"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    iget v1, p1, Landroidx/collection/MutableScatterMap;->_size:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroidx/compose/runtime/ComposerImpl;->doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result p0

    return p0
.end method

.method public final recomposeMovableContent(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionImpl;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v2, 0x0

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    iget-object v7, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_0

    invoke-virtual {p0, v7, v6}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v7, v5}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, -0x1

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    if-ltz p3, :cond_3

    iput-object p2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    iput p3, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    goto :goto_3

    :catchall_1
    move-exception p2

    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    throw p2

    :cond_3
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    :goto_3
    if-nez p2, :cond_5

    :cond_4
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    return-object p2

    :goto_4
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    throw p1
.end method

.method public final recomposeToGroupEnd()V
    .locals 40

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v5, v3, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v6, v4, 0x5

    const/4 v7, 0x3

    add-int/2addr v6, v7

    aget v5, v5, v6

    add-int/2addr v5, v4

    iget v8, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget v9, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget v11, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget v3, v3, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v12, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    :cond_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_1

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Invalidation;

    iget v13, v3, Landroidx/compose/runtime/Invalidation;->location:I

    if-ge v13, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move/from16 v16, v7

    const/4 v15, 0x0

    move v7, v4

    :goto_1
    if-eqz v3, :cond_2e

    iget-object v13, v3, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget v2, v3, Landroidx/compose/runtime/Invalidation;->location:I

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result v14

    if-ltz v14, :cond_2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/Invalidation;

    :cond_2
    iget-object v3, v3, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    const-wide/16 v19, 0x80

    const-wide/16 v21, 0xff

    const/16 v23, 0x7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-nez v3, :cond_5

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v27, v6

    :cond_3
    :goto_2
    move/from16 v35, v8

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    :cond_4
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_5
    const/16 v26, 0x8

    iget-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-nez v14, :cond_6

    move/from16 v27, v6

    goto :goto_2

    :cond_6
    move/from16 v27, v6

    instance-of v6, v3, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v6, :cond_7

    check-cast v3, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v3, v14}, Landroidx/compose/runtime/RecomposeScopeImpl;->checkDerivedStateChanged(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/collection/MutableScatterMap;)Z

    move-result v3

    move/from16 v35, v8

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    goto/16 :goto_7

    :cond_7
    instance-of v6, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_3

    check-cast v3, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v3, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/MutableScatterSet;->metadata:[J

    move-object/from16 v28, v6

    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_c

    move-object/from16 v29, v3

    move/from16 v30, v10

    move/from16 v31, v11

    const/4 v3, 0x0

    :goto_4
    aget-wide v10, v29, v3

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    not-long v12, v10

    shl-long v12, v12, v23

    and-long/2addr v12, v10

    and-long v12, v12, v24

    cmp-long v12, v12, v24

    if-eqz v12, :cond_b

    sub-int v12, v3, v6

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_a

    and-long v34, v10, v21

    cmp-long v34, v34, v19

    if-gez v34, :cond_8

    shl-int/lit8 v34, v3, 0x3

    add-int v34, v34, v13

    move/from16 v35, v8

    aget-object v8, v28, v34

    move-wide/from16 v36, v10

    instance-of v10, v8, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v10, :cond_4

    check-cast v8, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v8, v14}, Landroidx/compose/runtime/RecomposeScopeImpl;->checkDerivedStateChanged(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/collection/MutableScatterMap;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_8
    move/from16 v35, v8

    move-wide/from16 v36, v10

    :cond_9
    shr-long v10, v36, v26

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v35

    goto :goto_5

    :cond_a
    move/from16 v35, v8

    move/from16 v8, v26

    if-ne v12, v8, :cond_d

    goto :goto_6

    :cond_b
    move/from16 v35, v8

    :goto_6
    if-eq v3, v6, :cond_d

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move/from16 v8, v35

    const/16 v26, 0x8

    goto :goto_4

    :cond_c
    move/from16 v35, v8

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_26

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v3, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {v0, v7, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v6

    :goto_8
    if-eq v6, v4, :cond_e

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v6

    goto :goto_8

    :cond_e
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    goto :goto_9

    :cond_f
    move/from16 v7, v35

    :goto_9
    if-ne v6, v3, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v8

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v10

    sub-int/2addr v8, v10

    add-int/2addr v8, v7

    :cond_11
    if-ge v7, v8, :cond_13

    if-eq v6, v2, :cond_13

    add-int/lit8 v6, v6, 0x1

    :goto_a
    if-ge v6, v2, :cond_13

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v11, v10, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v12, v6, 0x5

    add-int/lit8 v12, v12, 0x3

    aget v11, v11, v12

    add-int/2addr v11, v6

    if-lt v2, v11, :cond_11

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v6

    :goto_b
    add-int/2addr v7, v6

    move v6, v11

    goto :goto_a

    :cond_13
    :goto_c
    iput v7, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    move/from16 v8, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d
    if-ltz v2, :cond_1c

    if-ne v2, v4, :cond_14

    invoke-static {v9, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    :goto_e
    xor-int/2addr v6, v2

    goto/16 :goto_12

    :cond_14
    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result v11

    iget-object v12, v10, Landroidx/compose/runtime/SlotReader;->groups:[I

    if-eqz v11, :cond_17

    invoke-virtual {v10, v12, v2}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_16

    instance-of v11, v10, Ljava/lang/Enum;

    if-eqz v11, :cond_15

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    goto :goto_10

    :cond_15
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_10

    :cond_16
    const/4 v10, 0x0

    goto :goto_10

    :cond_17
    mul-int/lit8 v11, v2, 0x5

    aget v11, v12, v11

    const/16 v13, 0xcf

    if-ne v11, v13, :cond_19

    invoke-virtual {v10, v12, v2}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_19

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_10

    :cond_19
    :goto_f
    move v10, v11

    :goto_10
    const v11, 0x78cc281

    if-ne v10, v11, :cond_1a

    invoke-static {v10, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    goto :goto_e

    :cond_1a
    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v11, 0x0

    goto :goto_11

    :cond_1b
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v11

    :goto_11
    invoke-static {v10, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v6, v10

    invoke-static {v11, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v6, v10

    add-int/lit8 v8, v8, 0x6

    rem-int/lit8 v8, v8, 0x20

    add-int/lit8 v7, v7, 0x6

    rem-int/lit8 v7, v7, 0x20

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    goto :goto_d

    :cond_1c
    :goto_12
    iput v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v2, :cond_1e

    move-object/from16 v2, v33

    iget v6, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_13

    :cond_1d
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_14

    :cond_1e
    move-object/from16 v2, v33

    :cond_1f
    const/4 v6, 0x0

    :goto_14
    const/4 v7, 0x1

    if-eqz v6, :cond_20

    iput-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_20
    iget-object v2, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v0, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_15

    :cond_21
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_25

    if-eqz v6, :cond_22

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_22
    const/4 v6, 0x0

    iput-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v7, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    aget v7, v7, v27

    add-int/2addr v7, v4

    iget v8, v2, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    if-lt v8, v4, :cond_23

    if-gt v8, v7, :cond_23

    const/4 v10, 0x1

    goto :goto_16

    :cond_23
    const/4 v10, 0x0

    :goto_16
    if-nez v10, :cond_24

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Index "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is not a parent of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_24
    iput v4, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    iput v7, v2, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 v7, 0x0

    iput v7, v2, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iput v7, v2, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    const/4 v15, 0x1

    const/16 v17, 0x1

    goto/16 :goto_1e

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid restart scope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    move-object/from16 v2, v33

    const/4 v6, 0x0

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/CompositionImpl;

    if-eqz v8, :cond_2b

    iget-object v10, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v10, :cond_2b

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    :try_start_0
    iget-object v11, v10, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v12, v10, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v10, v10, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v13, v10

    add-int/lit8 v13, v13, -0x2

    move/from16 v18, v7

    if-ltz v13, :cond_29

    const/4 v14, 0x0

    :goto_17
    aget-wide v6, v10, v14

    move-object/from16 v33, v10

    move-object/from16 v29, v11

    not-long v10, v6

    shl-long v10, v10, v23

    and-long/2addr v10, v6

    and-long v10, v10, v24

    cmp-long v10, v10, v24

    if-eqz v10, :cond_2a

    sub-int v10, v14, v13

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v26, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move-wide/from16 v36, v6

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v10, :cond_28

    and-long v38, v36, v21

    cmp-long v7, v38, v19

    if-gez v7, :cond_27

    shl-int/lit8 v7, v14, 0x3

    add-int/2addr v7, v6

    aget-object v11, v29, v7

    aget v7, v12, v7

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/CompositionImpl;->recordReadOf(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_27
    const/16 v7, 0x8

    goto :goto_19

    :catchall_0
    move-exception v0

    const/4 v7, 0x0

    goto :goto_1c

    :goto_19
    shr-long v36, v36, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_28
    const/16 v7, 0x8

    if-ne v10, v7, :cond_29

    goto :goto_1a

    :cond_29
    const/4 v7, 0x0

    goto :goto_1b

    :cond_2a
    const/16 v7, 0x8

    :goto_1a
    if-eq v14, v13, :cond_29

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v29

    move-object/from16 v10, v33

    goto :goto_17

    :goto_1b
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    goto :goto_1d

    :goto_1c
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    throw v0

    :cond_2b
    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move/from16 v3, v18

    :goto_1e
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v2, v2, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    move-object/from16 v6, v32

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result v2

    if-gez v2, :cond_2c

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    :cond_2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2d

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Invalidation;

    iget v8, v2, Landroidx/compose/runtime/Invalidation;->location:I

    if-ge v8, v5, :cond_2d

    goto :goto_1f

    :cond_2d
    const/4 v2, 0x0

    :goto_1f
    move v7, v3

    move-object v12, v6

    move/from16 v6, v27

    move/from16 v10, v30

    move/from16 v11, v31

    move/from16 v8, v35

    move-object v3, v2

    move/from16 v2, v17

    goto/16 :goto_1

    :cond_2e
    move/from16 v18, v7

    move/from16 v35, v8

    move/from16 v30, v10

    move/from16 v31, v11

    if-eqz v15, :cond_2f

    move/from16 v3, v18

    invoke-virtual {v0, v3, v4, v4}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v2

    add-int v8, v35, v2

    iput v8, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    add-int v10, v30, v2

    iput v10, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    move/from16 v2, v31

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    goto :goto_20

    :cond_2f
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    :goto_20
    iput v9, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void
.end method

.method public final recordDelete()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget-object v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v3, v2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v3, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-lez v4, :cond_1

    iget v4, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    const/4 v5, -0x2

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v5

    if-eq v5, v4, :cond_1

    iget-boolean v5, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v5, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v5, v5, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v7, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iput-boolean v6, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_0
    if-lez v4, :cond_1

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iput-boolean v6, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$RemoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveCurrentGroup;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v1, v2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v1, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget v1, v2, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    return-void
.end method

.method public final recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final recordUpsAndDowns(III)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p3, :cond_9

    if-ne p2, p3, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    if-ne v1, p2, :cond_2

    move p3, p2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    :goto_0
    move p3, p1

    goto :goto_6

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p3

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    :goto_1
    if-lez v2, :cond_5

    if-eq v2, p3, :cond_5

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v2, p2

    move v4, v1

    :goto_2
    if-lez v2, :cond_6

    if-eq v2, p3, :cond_6

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    sub-int p3, v3, v4

    move v5, p1

    move v2, v1

    :goto_3
    if-ge v2, p3, :cond_7

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    sub-int/2addr v4, v3

    move p3, p2

    :goto_4
    if-ge v1, v4, :cond_8

    invoke-virtual {v0, p3}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, p3

    move p3, v5

    :goto_5
    if-eq p3, v1, :cond_9

    invoke-virtual {v0, p3}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p3

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    goto :goto_5

    :cond_9
    :goto_6
    if-lez p1, :cond_b

    if-eq p1, p3, :cond_b

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_a
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    return-void
.end method

.method public final rememberedValue()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz p0, :cond_1

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    instance-of p0, v0, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p0, :cond_3

    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object p0, v0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final reportFreeMovableContent(I)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v3, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_1
    return-void
.end method

.method public final shouldExecute(IZ)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final skipCurrentGroup()V
    .locals 12

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v3, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v4, v0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v4

    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/16 v8, 0xcf

    const/4 v9, 0x3

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    if-ne v1, v8, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    iget v11, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v11, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v6

    iput v10, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_3

    :cond_2
    iget v10, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v1

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v6

    :goto_1
    iput v10, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_3

    :cond_3
    instance-of v10, v3, Ljava/lang/Enum;

    if-eqz v10, :cond_4

    move-object v10, v3

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_2
    iget v11, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v11, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_2

    :goto_3
    iget v10, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    mul-int/lit8 v10, v10, 0x5

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aget v2, v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v2, v10

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {p0, v5, v11}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    if-ne v1, v8, :cond_6

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void

    :cond_6
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v0, v6

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void

    :cond_7
    instance-of v0, v3, Ljava/lang/Enum;

    if-eqz v0, :cond_8

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v1, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v1, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void
.end method

.method public final skipReaderToGroupEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-ltz v1, :cond_0

    iget-object v2, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v1, v2, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    return-void
.end method

.method public final skipToGroupEnd()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    :cond_4
    return-void
.end method

.method public final start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz v7, :cond_0

    const-string v7, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/4 v9, 0x3

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    const/16 v10, 0xcf

    if-ne v1, v10, :cond_1

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    iget v11, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v11, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    xor-int/2addr v7, v9

    iput v7, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    :cond_1
    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v1

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    xor-int/2addr v7, v9

    :goto_0
    iput v7, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    :cond_2
    instance-of v7, v3, Ljava/lang/Enum;

    if-eqz v7, :cond_3

    move-object v7, v3

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    :goto_1
    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v7, v10

    invoke-static {v7, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :goto_2
    const/4 v7, 0x1

    if-nez v3, :cond_4

    iget v9, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    add-int/2addr v9, v7

    iput v9, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    :cond_4
    const/4 v9, 0x0

    if-eqz v2, :cond_5

    move v10, v7

    goto :goto_3

    :cond_5
    move v10, v9

    :goto_3
    iget-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v12, -0x2

    const/4 v13, 0x0

    if-eqz v11, :cond_b

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v11, v2, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/2addr v11, v7

    iput v11, v2, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v11, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-eqz v10, :cond_6

    invoke-virtual {v2, v8, v8, v1, v7}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_8

    if-nez v3, :cond_7

    move-object v3, v8

    :cond_7
    invoke-virtual {v2, v3, v4, v1, v9}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    move-object v3, v8

    :cond_9
    invoke-virtual {v2, v3, v8, v1, v9}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    :goto_4
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v2, :cond_a

    new-instance v3, Landroidx/compose/runtime/KeyInfo;

    sub-int/2addr v12, v11

    invoke-direct {v3, v6, v1, v12, v5}, Landroidx/compose/runtime/KeyInfo;-><init>(Ljava/lang/Object;III)V

    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget v4, v2, Landroidx/compose/runtime/Pending;->startIndex:I

    sub-int/2addr v1, v4

    iget-object v4, v2, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    new-instance v6, Landroidx/compose/runtime/GroupInfo;

    invoke-direct {v6, v5, v1, v9}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-virtual {v4, v12, v6}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    iget-object v1, v2, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v0, v10, v13}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    :cond_b
    if-eq v2, v7, :cond_c

    goto :goto_5

    :cond_c
    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v2, :cond_d

    move v2, v7

    goto :goto_6

    :cond_d
    :goto_5
    move v2, v9

    :goto_6
    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-nez v11, :cond_f

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v11}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v11

    if-nez v2, :cond_10

    if-ne v11, v1, :cond_10

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v14, v11, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v15, v11, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v14, v15, :cond_e

    iget-object v15, v11, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-virtual {v11, v15, v14}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v11

    goto :goto_7

    :cond_e
    move-object v11, v13

    :goto_7
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v0, v4, v10}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(Ljava/lang/Object;Z)V

    :cond_f
    move/from16 p2, v2

    goto :goto_b

    :cond_10
    new-instance v11, Landroidx/compose/runtime/Pending;

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v15, v14, Landroidx/compose/runtime/SlotReader;->groups:[I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v13, v14, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v13, :cond_12

    :cond_11
    move/from16 p2, v2

    goto :goto_a

    :cond_12
    iget v13, v14, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    :goto_8
    iget v12, v14, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v13, v12, :cond_11

    new-instance v12, Landroidx/compose/runtime/KeyInfo;

    mul-int/lit8 v18, v13, 0x5

    aget v7, v15, v18

    invoke-virtual {v14, v15, v13}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v20, v18, 0x1

    aget v20, v15, v20

    const/high16 v21, 0x40000000    # 2.0f

    and-int v21, v20, v21

    if-eqz v21, :cond_13

    move/from16 p2, v2

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    const v21, 0x3ffffff

    and-int v20, v20, v21

    move/from16 p2, v2

    move/from16 v2, v20

    :goto_9
    invoke-direct {v12, v9, v7, v13, v2}, Landroidx/compose/runtime/KeyInfo;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x3

    aget v2, v15, v18

    add-int/2addr v13, v2

    move/from16 v2, p2

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto :goto_8

    :goto_a
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-direct {v11, v2, v5}, Landroidx/compose/runtime/Pending;-><init>(ILjava/util/ArrayList;)V

    iput-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    :goto_b
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v2, :cond_2b

    iget-object v5, v2, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/ArrayList;

    iget-object v7, v2, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    iget v9, v2, Landroidx/compose/runtime/Pending;->startIndex:I

    if-eqz v3, :cond_14

    new-instance v11, Landroidx/compose/runtime/JoinedKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto :goto_c

    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_c
    iget-object v12, v2, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v12}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/collection/MultiValueMap;

    iget-object v12, v12, Landroidx/compose/runtime/collection/MultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_15

    const/4 v13, 0x0

    goto :goto_d

    :cond_15
    instance-of v14, v13, Landroidx/collection/MutableObjectList;

    if-eqz v14, :cond_18

    check-cast v13, Landroidx/collection/MutableObjectList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13}, Landroidx/collection/MutableObjectList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v14, v13, Landroidx/collection/MutableObjectList;->_size:I

    const/4 v3, 0x1

    if-ne v14, v3, :cond_17

    invoke-virtual {v13}, Landroidx/collection/MutableObjectList;->first()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v11, v3}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    move-object v13, v15

    goto :goto_d

    :cond_18
    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    check-cast v13, Landroidx/compose/runtime/KeyInfo;

    if-nez p2, :cond_2c

    if-eqz v13, :cond_2c

    iget v1, v13, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/GroupInfo;

    if-eqz v3, :cond_19

    iget v3, v3, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_e

    :cond_19
    const/4 v3, -0x1

    :goto_e
    add-int/2addr v3, v9

    iput v3, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v7, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/GroupInfo;

    if-eqz v3, :cond_1a

    iget v5, v3, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    goto :goto_f

    :cond_1a
    const/4 v5, -0x1

    :goto_f
    iget v2, v2, Landroidx/compose/runtime/Pending;->groupIndex:I

    sub-int v3, v5, v2

    const/16 v15, 0x8

    if-le v5, v2, :cond_21

    const/16 p1, 0x7

    iget-object v6, v7, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v7, v7, Landroidx/collection/IntObjectMap;->metadata:[J

    const-wide/16 p2, 0x80

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_20

    const/4 v9, 0x0

    const-wide/16 v20, 0xff

    :goto_10
    aget-wide v11, v7, v9

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v13, v11

    shl-long v13, v13, p1

    and-long/2addr v13, v11

    and-long v13, v13, v22

    cmp-long v13, v13, v22

    if-eqz v13, :cond_1f

    sub-int v13, v9, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v13, :cond_1e

    and-long v24, v11, v20

    cmp-long v16, v24, p2

    if-gez v16, :cond_1c

    shl-int/lit8 v16, v9, 0x3

    add-int v16, v16, v14

    aget-object v16, v6, v16

    move/from16 v18, v15

    move-object/from16 v15, v16

    check-cast v15, Landroidx/compose/runtime/GroupInfo;

    move/from16 v16, v3

    iget v3, v15, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    if-ne v3, v5, :cond_1b

    iput v2, v15, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    goto :goto_12

    :cond_1b
    if-gt v2, v3, :cond_1d

    if-ge v3, v5, :cond_1d

    add-int/lit8 v3, v3, 0x1

    iput v3, v15, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    goto :goto_12

    :cond_1c
    move/from16 v16, v3

    move/from16 v18, v15

    :cond_1d
    :goto_12
    shr-long v11, v11, v18

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move/from16 v15, v18

    goto :goto_11

    :cond_1e
    move/from16 v16, v3

    move v3, v15

    if-ne v13, v3, :cond_27

    goto :goto_13

    :cond_1f
    move/from16 v16, v3

    :goto_13
    if-eq v9, v8, :cond_27

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    const/16 v15, 0x8

    goto :goto_10

    :cond_20
    move/from16 v16, v3

    goto/16 :goto_1a

    :cond_21
    move/from16 v16, v3

    const/16 p1, 0x7

    const-wide/16 p2, 0x80

    const-wide/16 v20, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-le v2, v5, :cond_27

    iget-object v3, v7, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v6, v7, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_27

    const/4 v8, 0x0

    :goto_14
    aget-wide v11, v6, v8

    not-long v13, v11

    shl-long v13, v13, p1

    and-long/2addr v13, v11

    and-long v13, v13, v22

    cmp-long v9, v13, v22

    if-eqz v9, :cond_26

    sub-int v9, v8, v7

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v18, 0x8

    rsub-int/lit8 v15, v9, 0x8

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v15, :cond_25

    and-long v13, v11, v20

    cmp-long v13, v13, p2

    if-gez v13, :cond_24

    shl-int/lit8 v13, v8, 0x3

    add-int/2addr v13, v9

    aget-object v13, v3, v13

    check-cast v13, Landroidx/compose/runtime/GroupInfo;

    iget v14, v13, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    if-ne v14, v5, :cond_22

    iput v2, v13, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    goto :goto_17

    :cond_22
    move-object/from16 v24, v3

    add-int/lit8 v3, v5, 0x1

    if-gt v3, v14, :cond_23

    if-ge v14, v2, :cond_23

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    :cond_23
    :goto_16
    const/16 v3, 0x8

    goto :goto_18

    :cond_24
    :goto_17
    move-object/from16 v24, v3

    goto :goto_16

    :goto_18
    shr-long/2addr v11, v3

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v24

    goto :goto_15

    :cond_25
    move-object/from16 v24, v3

    const/16 v3, 0x8

    if-ne v15, v3, :cond_27

    goto :goto_19

    :cond_26
    move-object/from16 v24, v3

    const/16 v3, 0x8

    :goto_19
    if-eq v8, v7, :cond_27

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v24

    goto :goto_14

    :cond_27
    :goto_1a
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget v3, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v5, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v6, v5, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v6, v6, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    sub-int v6, v1, v6

    add-int/2addr v6, v3

    iput v6, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    if-lez v16, :cond_2a

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget-object v3, v5, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v5, v3, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-lez v5, :cond_29

    iget v5, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    const/4 v6, -0x2

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v6

    if-eq v6, v5, :cond_29

    iget-boolean v6, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-nez v6, :cond_28

    iget-boolean v6, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    if-eqz v6, :cond_28

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v6, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v6, v6, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v7, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v6, 0x1

    iput-boolean v6, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_28
    if-lez v5, :cond_29

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v5, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v1, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_29
    iget-object v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v2, v1, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v3, v1, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v5, v1, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v1, v1, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v5, v1

    iget v1, v1, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v3, v1

    aput v16, v2, v3

    :cond_2a
    invoke-virtual {v0, v4, v10}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(Ljava/lang/Object;Z)V

    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_20

    :cond_2c
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v2, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v11, 0x1

    add-int/2addr v3, v11

    iput v3, v2, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iput-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v3, v3, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-eqz v3, :cond_2d

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_2d
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v3, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-eqz v10, :cond_2e

    const/4 v11, 0x1

    invoke-virtual {v2, v8, v8, v1, v11}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    const/4 v14, 0x0

    goto :goto_1e

    :cond_2e
    if-eqz v4, :cond_30

    if-nez p3, :cond_2f

    :goto_1b
    const/4 v14, 0x0

    goto :goto_1c

    :cond_2f
    move-object/from16 v8, p3

    goto :goto_1b

    :goto_1c
    invoke-virtual {v2, v8, v4, v1, v14}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    goto :goto_1e

    :cond_30
    const/4 v14, 0x0

    if-nez p3, :cond_31

    move-object v4, v8

    goto :goto_1d

    :cond_31
    move-object/from16 v4, p3

    :goto_1d
    invoke-virtual {v2, v4, v8, v1, v14}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    :goto_1e
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    new-instance v2, Landroidx/compose/runtime/KeyInfo;

    const/16 v17, -0x2

    rsub-int/lit8 v12, v3, -0x2

    const/4 v3, -0x1

    invoke-direct {v2, v6, v1, v12, v3}, Landroidx/compose/runtime/KeyInfo;-><init>(Ljava/lang/Object;III)V

    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    sub-int/2addr v1, v9

    new-instance v4, Landroidx/compose/runtime/GroupInfo;

    invoke-direct {v4, v3, v1, v14}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-virtual {v7, v12, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Landroidx/compose/runtime/Pending;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_32

    move v9, v14

    goto :goto_1f

    :cond_32
    iget v9, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_1f
    invoke-direct {v13, v9, v1}, Landroidx/compose/runtime/Pending;-><init>(ILjava/util/ArrayList;)V

    goto :goto_21

    :goto_20
    move-object v13, v2

    :goto_21
    invoke-virtual {v0, v10, v13}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method public final startDefaults()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x7f

    invoke-virtual {p0, v2, v1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILandroidx/compose/runtime/OpaqueKey;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startReaderGroup(Ljava/lang/Object;Z)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p1, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget p2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x1

    aget p1, p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Expected a node group"

    invoke-static {p1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object p2, p2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object p2, p2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    return-void
.end method

.method public final startReplaceGroup(I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz v0, :cond_1

    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    xor-int/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    xor-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v4, :cond_2

    iget v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, v5, v5, p1, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v4

    if-ne v4, p1, :cond_4

    iget v4, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v6, v0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v4, v6, :cond_3

    iget-object v6, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v4, v3

    aget v4, v6, v4

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    :cond_4
    :goto_0
    iget v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    iget v4, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v6, v0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v4, v6, :cond_6

    goto :goto_1

    :cond_6
    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v7

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v8, v6, v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    iget-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    iget v7, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v4, v7, v6}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(IILjava/util/List;)V

    :goto_1
    iget v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v5, v5, p1, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method public final startReplaceableGroup(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iput v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    iget v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    return-object p0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p1, p1, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Invalidation;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    :goto_1
    const/4 v1, 0x0

    if-nez p1, :cond_6

    iget p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    and-int/lit8 p1, p1, -0x41

    iput p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_4

    :cond_6
    :goto_3
    iget p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iput p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    iget p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, p1, -0x11

    iput v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_7

    and-int/lit16 p1, p1, -0x111

    or-int/lit16 p1, p1, 0x200

    iput p1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object p1, p1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object p1, p1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$StartResumingScope;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$StartResumingScope;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    :cond_7
    return-object p0
.end method

.method public final startReusableGroup(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/16 v1, 0xcf

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startReusableNode()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x7d

    invoke-virtual {p0, v2, v1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method public final startRoot()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime_release()V

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime_release()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    :cond_0
    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sget-object v4, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v3, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->_compositionData:Landroidx/compose/runtime/CompositionDataImpl;

    if-nez v4, :cond_2

    new-instance v4, Landroidx/compose/runtime/CompositionDataImpl;

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v4, v5}, Landroidx/compose/runtime/CompositionDataImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    iput-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->_compositionData:Landroidx/compose/runtime/CompositionDataImpl;

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime_release(Ljava/util/Set;)V

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCompoundHashKey$runtime_release()I

    move-result v1

    invoke-virtual {p0, v1, v0, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v1, v1, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    if-lt v0, v1, :cond_6

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    add-int/2addr v1, v2

    neg-int v1, v1

    instance-of v4, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v3, p1, v0, p2}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Invalidation;

    instance-of p1, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    if-nez p1, :cond_3

    iput-object p2, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    return v2

    :cond_3
    instance-of v0, p1, Landroidx/collection/MutableScatterSet;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/collection/MutableScatterSet;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    return v2

    :cond_4
    sget v0, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    return v2

    :cond_5
    iput-object v3, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    return v2

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final updateComposerInvalidations-RY85e9Y(Landroidx/collection/MutableScatterMap;)V
    .locals 14

    iget-object v0, p1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v1, p1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, p1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_2

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v11, v0, v10

    aget-object v10, v1, v10

    const-string v12, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-eqz v12, :cond_1

    iget v12, v12, Landroidx/compose/runtime/Anchor;->location:I

    sget-object v13, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$2:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v10, v13, :cond_0

    const/4 v10, 0x0

    :cond_0
    new-instance v13, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v13, v11, v12, v10}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_4

    :cond_3
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final updateNodeCount(II)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    if-gez p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntIntMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    move-object v0, v1

    :cond_2
    aput p2, v0, p1

    :cond_3
    return-void
.end method

.method public final updateNodeCountOverrides(II)V
    .locals 6

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    move v4, v1

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Pending;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1, v3}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p1, p1, Landroidx/compose/runtime/SlotReader;->parent:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    iput-object p1, v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->map:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->build()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    const/16 v0, 0xcc

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->providerMaps:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p1
.end method

.method public final updateRememberedValue(Ljava/lang/Object;)V
    .locals 7

    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/compose/runtime/RememberObserverHolder;

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v4, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v5, v2, Landroidx/compose/runtime/SlotWriter;->parent:I

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    iget-object v3, v2, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v2

    :goto_0
    move v6, v4

    move v4, v2

    move v2, v6

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v5, v3, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eq v4, v5, :cond_0

    if-ltz v4, :cond_0

    iget-object v2, v3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v2, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v5, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    :goto_1
    move v6, v4

    move v4, v2

    move v2, v6

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v5, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    if-eq v4, v5, :cond_2

    if-ltz v4, :cond_2

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-direct {v0, v1, v3}, Landroidx/compose/runtime/RememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/Anchor;)V

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$Remember;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Remember;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableSetWrapper;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v0, p0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/collection/MutableObjectList;

    invoke-direct {v1}, Landroidx/collection/MutableObjectList;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_1
    check-cast v1, Landroidx/collection/MutableObjectList;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->rawUpdate(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-boolean v1, v0, Landroidx/compose/runtime/SlotReader;->hadNext:Z

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget v1, v0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object v5, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v5, v0}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    iget-object v0, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget v5, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    sub-int/2addr v0, v5

    if-gez v0, :cond_4

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    iget-object v0, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$3:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v0, v3, p1, v4, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObjects-4uCC6AY(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, v0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget p1, v0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v2, v0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v0, v0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    sub-int/2addr v0, v4

    aget-object v0, v2, v0

    iget v0, v0, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr p1, v0

    aput v1, p0, p1

    return-void

    :cond_4
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object p0, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {p0, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v2, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    sub-int/2addr p0, v4

    aget-object p0, v2, p0

    iget p0, p0, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v0, p0

    aput v1, p1, v0

    return-void

    :cond_5
    iget p0, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    iget-object v0, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$AppendValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$AppendValue;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v0, v3, p0, v4, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObjects-4uCC6AY(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final updatedNodeCount(I)I
    .locals 2

    if-gez p1, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->findKeyIndex(I)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->findKeyIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/collection/MutableIntIntMap;->values:[I

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find value for key "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwNoSuchElementException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-eqz v0, :cond_3

    aget v0, v0, p1

    if-ltz v0, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    return p0
.end method

.method public final useNode()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-nez v0, :cond_0

    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "useNode() called while inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v2, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_3

    instance-of p0, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object p0, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$UseCurrentNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UseCurrentNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method
