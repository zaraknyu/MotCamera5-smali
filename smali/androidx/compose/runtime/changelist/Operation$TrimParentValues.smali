.class public final Landroidx/compose/runtime/changelist/Operation$TrimParentValues;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 6

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p0

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p1

    iget p2, p3, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v0, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v0

    iget-object v1, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p2

    invoke-virtual {p3, v1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p2

    sub-int v1, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-ge v0, p2, :cond_3

    iget-object v1, p3, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v2

    aget-object v1, v1, v2

    instance-of v2, v1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v2, :cond_1

    sub-int v2, p1, v0

    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v3, v1, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v4

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    move v4, v3

    :goto_1
    invoke-virtual {p4, v1, v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_1
    instance-of v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "Check failed"

    if-lez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_3
    iget p2, p3, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object p4, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-virtual {p3, p4, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result p4

    iget-object v0, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    sub-int/2addr v0, p0

    if-lt v0, p4, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p3, v0, p0, p2}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    iget p1, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-lt p1, p4, :cond_6

    sub-int/2addr p1, p0

    iput p1, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    :cond_6
    return-void
.end method
