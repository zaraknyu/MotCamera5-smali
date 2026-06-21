.class public final Landroidx/compose/runtime/changelist/Operations;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgm;
.source "SourceFile"


# instance fields
.field public intArgs:[I

.field public intArgsSize:I

.field public objectArgs:[Ljava/lang/Object;

.field public objectArgsSize:I

.field public opCodes:[Landroidx/compose/runtime/changelist/Operation;

.field public opCodesSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/runtime/changelist/Operation;

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-static {v0, v3, v2, v1}, Lkotlin/collections/ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    return-void
.end method

.method public final executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/collection/CircularArray;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/changelist/Operations;

    :goto_0
    iget-object v2, v1, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v3, v0, Landroidx/collection/CircularArray;->head:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, p1, p2, p3}, Landroidx/compose/runtime/changelist/Operation;->execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V

    iget v2, v0, Landroidx/collection/CircularArray;->head:I

    iget v3, v1, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v1, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    aget-object v4, v4, v2

    iget v5, v0, Landroidx/collection/CircularArray;->tail:I

    iget v6, v4, Landroidx/compose/runtime/changelist/Operation;->ints:I

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/collection/CircularArray;->tail:I

    iget v5, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    iget v4, v4, Landroidx/compose/runtime/changelist/Operation;->objects:I

    add-int/2addr v5, v4

    iput v5, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/collection/CircularArray;->head:I

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final pushOp(Landroidx/compose/runtime/changelist/Operation;)V
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    array-length v2, v1

    const/16 v3, 0x400

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    if-le v0, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr v2, v0

    new-array v2, v2, [Landroidx/compose/runtime/changelist/Operation;

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget v1, p1, Landroidx/compose/runtime/changelist/Operation;->ints:I

    iget v2, p1, Landroidx/compose/runtime/changelist/Operation;->objects:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    array-length v5, v1

    if-le v0, v5, :cond_4

    if-le v5, v3, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    add-int/2addr v6, v5

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v6

    :goto_2
    new-array v0, v0, [I

    invoke-static {v4, v4, v5, v1, v0}, Lkotlin/collections/ArraysKt;->copyInto(III[I[I)V

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    :cond_4
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    add-int/2addr v0, v2

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    array-length v5, v1

    if-le v0, v5, :cond_7

    if-le v5, v3, :cond_5

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    add-int/2addr v3, v5

    if-ge v3, v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    aput-object p1, v0, v1

    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget p1, p1, Landroidx/compose/runtime/changelist/Operation;->ints:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget p1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    return-void
.end method
