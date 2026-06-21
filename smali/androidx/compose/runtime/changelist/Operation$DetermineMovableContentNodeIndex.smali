.class public final Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 7

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/runtime/internal/IntRef;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    iget v1, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    const-string v2, "Check failed"

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3, p2, p1}, Landroidx/compose/runtime/changelist/OperationKt;->positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    iget v1, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v3, p3, Landroidx/compose/runtime/SlotWriter;->parent:I

    :goto_1
    if-ltz v3, :cond_1

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p3, v4, v3}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v3

    goto :goto_1

    :cond_1
    add-int/2addr v3, v0

    move v4, p0

    :goto_2
    if-ge v3, v1, :cond_5

    invoke-virtual {p3, v1, v3}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v0

    goto :goto_3

    :cond_4
    iget-object v5, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    :goto_3
    add-int/2addr v4, v5

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    :cond_5
    :goto_4
    iget v1, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-ge v1, p1, :cond_8

    invoke-virtual {p3, p1, v1}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v3, p3, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v1, v3, :cond_6

    iget-object v3, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    aget v1, v3, v1

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    iget v1, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    move v4, p0

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    goto :goto_4

    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_4

    :cond_8
    if-ne v1, p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_5
    iput v4, p4, Landroidx/compose/runtime/internal/IntRef;->element:I

    return-void
.end method
