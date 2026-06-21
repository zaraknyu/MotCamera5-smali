.class public abstract Landroidx/compose/runtime/ComposerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final InvalidationLocationAscending:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

.field public static final compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

.field public static final invocation:Landroidx/compose/runtime/OpaqueKey;

.field public static final provider:Landroidx/compose/runtime/OpaqueKey;

.field public static final providerMaps:Landroidx/compose/runtime/OpaqueKey;

.field public static final reference:Landroidx/compose/runtime/OpaqueKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string/jumbo v1, "provider"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string/jumbo v1, "providers"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string/jumbo v1, "reference"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static final access$removeRange(IILjava/util/List;)V
    .locals 1

    invoke-static {p2, p0}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Invalidation;

    iget v0, v0, Landroidx/compose/runtime/Invalidation;->location:I

    if-ge v0, p1, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/ArrayList;I)V
    .locals 3

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v2, p2, 0x5

    add-int/lit8 v2, v2, 0x3

    aget v2, v1, v2

    add-int/2addr v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/ArrayList;I)V

    mul-int/lit8 p2, v0, 0x5

    add-int/lit8 p2, p2, 0x3

    aget p2, v1, p2

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final composeImmediateRuntimeError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    aget-object v2, v2, v3

    instance-of v3, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-virtual {p1, v2, v3, v4, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_0
    instance-of v3, v2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v5, v3, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    instance-of v5, v5, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-nez v5, :cond_3

    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/ComposerKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v5, v3, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v5

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {p1, v3, v2, v4, v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_3

    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/ComposerKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static final findLocation(Ljava/util/List;I)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Invalidation;

    iget v3, v3, Landroidx/compose/runtime/Invalidation;->location:I

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method public static final removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 8

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    aget-object v2, v2, v3

    instance-of v3, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    iget-object v6, p1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    if-nez v6, :cond_0

    sget v6, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v6, Landroidx/collection/MutableScatterSet;

    invoke-direct {v6}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object v6, p1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    :cond_0
    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v3, v4, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    :cond_1
    instance-of v3, v2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v6, v5, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v6

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-virtual {p1, v5, v3, v4, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    :cond_3
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_4

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    return-void
.end method

.method public static final removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v0, p0, p1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    aput-object v1, p0, p1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Slot table is out of sync (expected "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", got "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    return-void
.end method
