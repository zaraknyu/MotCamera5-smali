.class public abstract Landroidx/compose/runtime/collection/MutableVectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final checkIndex(Ljava/util/List;I)V
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ltz p1, :cond_1

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p1, p0}, Landroidx/compose/runtime/collection/MutableVectorKt;->throwListIndexOutOfBoundsException(II)V

    return-void
.end method

.method public static final checkSubIndex(IILjava/util/List;)V
    .locals 0

    if-le p0, p1, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/runtime/collection/MutableVectorKt;->throwReversedIndicesException(II)V

    :cond_0
    if-gez p0, :cond_1

    invoke-static {p0}, Landroidx/compose/runtime/collection/MutableVectorKt;->throwNegativeIndexException(I)V

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-le p1, p0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/runtime/collection/MutableVectorKt;->throwOutOfRangeException(II)V

    :cond_2
    return-void
.end method

.method private static final throwListIndexOutOfBoundsException(II)V
    .locals 4

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, " is out of bounds. The list has "

    const-string v2, " elements."

    const-string v3, "Index "

    invoke-static {p0, p1, v3, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final throwNegativeIndexException(I)V
    .locals 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "fromIndex ("

    const-string v2, ") is less than 0."

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final throwOutOfRangeException(II)V
    .locals 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toIndex ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is more than than the list size ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final throwReversedIndicesException(II)V
    .locals 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ") is greater than toIndex ("

    const-string v2, ")."

    const-string v3, "Indices are out of order. fromIndex ("

    invoke-static {p0, p1, v3, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
