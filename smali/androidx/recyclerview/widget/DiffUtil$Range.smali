.class public final Landroidx/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public newListEnd:I

.field public newListStart:I

.field public oldListEnd:I

.field public oldListStart:I


# virtual methods
.method public final newSize()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final oldSize()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v0, p0

    return v0
.end method
