.class public final Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCallback:Landroidx/recyclerview/widget/OpReorderer;

.field public final mDetectMoves:Z

.field public final mDiagonals:Ljava/util/ArrayList;

.field public final mNewItemStatuses:[I

.field public final mNewListSize:I

.field public final mOldItemStatuses:[I

.field public final mOldListSize:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/OpReorderer;Ljava/util/ArrayList;[I[I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/OpReorderer;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OpReorderer;->getOldListSize()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OpReorderer;->getNewListSize()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_0
    if-eqz v4, :cond_1

    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-nez v5, :cond_1

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v4, v0, v0, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-virtual {p2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v4, v1, v2, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move v4, v0

    :goto_1
    iget v5, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v4, v5, :cond_3

    iget v5, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    add-int/2addr v5, v4

    iget v6, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Landroidx/recyclerview/widget/OpReorderer;->areContentsTheSame(II)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    :goto_2
    shl-int/lit8 v8, v6, 0x4

    or-int/2addr v8, v7

    aput v8, p3, v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v7

    aput v5, p4, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_4
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-ge v1, v3, :cond_a

    aget v3, p3, v1

    if-nez v3, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    move v5, v4

    :goto_5
    if-ge v4, v3, :cond_9

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_6
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-ge v5, v7, :cond_8

    aget v7, p4, v5

    if-nez v7, :cond_7

    invoke-virtual {p1, v1, v5}, Landroidx/recyclerview/widget/OpReorderer;->areItemsTheSame(II)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1, v1, v5}, Landroidx/recyclerview/widget/OpReorderer;->areContentsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    goto :goto_7

    :cond_6
    const/4 v3, 0x4

    :goto_7
    shl-int/lit8 v4, v5, 0x4

    or-int/2addr v4, v3

    aput v4, p3, v1

    shl-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    aput v3, p4, v5

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    iget v5, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iget v1, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v1, v3

    goto :goto_3

    :cond_b
    return-void
.end method

.method public static getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v1, p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    if-eqz p2, :cond_2

    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    :cond_3
    return-object v0
.end method
