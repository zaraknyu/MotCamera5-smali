.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public capacityBitmask:I

.field public elements:Ljava/lang/Object;

.field public head:I

.field public tail:I


# virtual methods
.method public addLast(Landroidx/room/coroutines/ConnectionWithLock;)V
    .locals 6

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr p1, v1

    iput p1, p0, Landroidx/collection/CircularArray;->tail:I

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    if-ne p1, v1, :cond_1

    array-length p1, v0

    sub-int v2, p1, v1

    shl-int/lit8 v3, p1, 0x1

    if-ltz v3, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5, v1, p1, v0, v4}, Lkotlin/collections/ArraysKt;->copyInto(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    invoke-static {v2, v5, v1, v0, v4}, Lkotlin/collections/ArraysKt;->copyInto(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v4, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    iput v5, p0, Landroidx/collection/CircularArray;->head:I

    iput p1, p0, Landroidx/collection/CircularArray;->tail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Max array capacity exceeded"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public checkUniformAssignment(II)V
    .locals 3

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    rem-int v1, p1, p2

    if-nez v1, :cond_1

    iget p0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    div-int p2, p1, p2

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Size mismatch: Cannot assign "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " values to uniform \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size mismatch: Attempting to assign values of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to uniform \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (must be multiple of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-static {v1, p2, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/changelist/Operations;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget p0, p0, Landroidx/collection/CircularArray;->tail:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public getObject-31yXWZQ(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/changelist/Operations;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public remove()J
    .locals 5

    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/CircularArray;->head:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    return-wide v3

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
