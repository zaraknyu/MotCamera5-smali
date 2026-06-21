.class public final Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
.super Landroidx/compose/runtime/CompositionContext;
.source "SourceFile"


# instance fields
.field public final collectingParameterInformation:Z

.field public final collectingSourceInformation:Z

.field public final composers:Ljava/util/LinkedHashSet;

.field public final compositionLocalScope$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final compoundHashKey:I

.field public inspectionTables:Ljava/util/HashSet;

.field public final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;IZZLandroidx/compose/runtime/NeverEqualPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compoundHashKey:I

    iput-boolean p3, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->collectingParameterInformation:Z

    iput-boolean p4, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->collectingSourceInformation:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/LinkedHashSet;

    sget-object p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Empty:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    sget-object p2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final composeInitial$runtime_release(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/CompositionContext;->composeInitial$runtime_release(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final dispose()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/HashSet;

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, v2, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method public final doneComposing$runtime_release()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method

.method public final getCollectingCallByInformation$runtime_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result p0

    return p0
.end method

.method public final getCollectingParameterInformation$runtime_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->collectingParameterInformation:Z

    return p0
.end method

.method public final getCollectingSourceInformation$runtime_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->collectingSourceInformation:Z

    return p0
.end method

.method public final getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p0
.end method

.method public final getCompoundHashKey$runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compoundHashKey:I

    return p0
.end method

.method public final getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final invalidate$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 2

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V

    return-void
.end method

.method public final movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object p0

    return-object p0
.end method

.method public final recordInspectionTable$runtime_release(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/HashSet;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerComposer$runtime_release(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reportRemovedComposition$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V

    return-void
.end method

.method public final startComposing$runtime_release()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method

.method public final unregisterComposer$runtime_release(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/util/AbstractCollection;)Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterComposition$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V

    return-void
.end method
