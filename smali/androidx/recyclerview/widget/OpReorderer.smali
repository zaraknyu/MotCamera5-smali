.class public final Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field public final mCallback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentTransitionImpl$1;

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsIn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/DiffUtil;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentTransitionImpl$1;

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsIn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/DiffUtil;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentTransitionImpl$1;

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsIn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/DiffUtil;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public getNewListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentTransitionImpl$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentTransitionImpl$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsIn:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ListAdapter;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ListAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ListAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ListAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
