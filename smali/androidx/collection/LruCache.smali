.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public hitCount:I

.field public final lock:Ljava/lang/Object;

.field public final map:Ljava/lang/Object;

.field public maxSize:I

.field public missCount:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/LruCache;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    if-lez p1, :cond_0

    .line 3
    new-instance p1, Landroidx/work/impl/StartStopTokensImpl;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/work/impl/StartStopTokensImpl;-><init>(I)V

    iput-object p1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroidx/collection/internal/Lock;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p1, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 6
    iput-object p1, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    const-string p0, "maxSize <= 0"

    .line 8
    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/collection/LruCache;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    const/high16 p1, -0x80000000

    .line 11
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 12
    iput p1, p0, Landroidx/collection/LruCache;->size:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Landroidx/collection/LruCache;->hitCount:I

    .line 14
    iput p2, p0, Landroidx/collection/LruCache;->missCount:I

    return-void
.end method


# virtual methods
.method public calculateCachedEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v2, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v2, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/collection/LruCache;->size:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/collection/LruCache;->maxSize:I

    iput v0, p0, Landroidx/collection/LruCache;->size:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/LruCache;->hitCount:I

    return-void
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .locals 2

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LruCache;->findOnePartiallyVisibleChild(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/collection/LruCache;->findOnePartiallyVisibleChild(II)I

    move-result p0

    return p0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .locals 2

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/collection/LruCache;->findOnePartiallyVisibleChild(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LruCache;->findOnePartiallyVisibleChild(II)I

    move-result p0

    return p0
.end method

.method public findOnePartiallyVisibleChild(II)I
    .locals 11

    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v2}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-le p2, p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eq p1, p2, :cond_5

    iget-object v6, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v6}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v8, v6}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    if-gt v7, v2, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    if-lt v8, v1, :cond_2

    move v9, v4

    :cond_2
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    if-lt v7, v1, :cond_3

    if-le v8, v2, :cond_4

    :cond_3
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_4
    add-int/2addr p1, v5

    goto :goto_0

    :cond_5
    return v3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/internal/Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopTokensImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v1, p0, Landroidx/collection/LruCache;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget p1, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/LruCache;->missCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public getEndLine(I)I
    .locals 2

    iget v0, p0, Landroidx/collection/LruCache;->size:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/collection/LruCache;->calculateCachedEnd()V

    iget p0, p0, Landroidx/collection/LruCache;->size:I

    return p0
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object p0, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_2

    :cond_0
    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_1

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_6

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_4

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_6

    :cond_4
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_5

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-gt v3, p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 p2, p2, -0x1

    move-object v2, v1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v2
.end method

.method public getStartLine(I)I
    .locals 2

    iget v0, p0, Landroidx/collection/LruCache;->maxSize:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v1, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Landroidx/collection/LruCache;->maxSize:I

    return p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/internal/Lock;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopTokensImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p2, p0, Landroidx/collection/LruCache;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    monitor-exit v0

    iget p2, p0, Landroidx/collection/LruCache;->maxSize:I

    :goto_1
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/internal/Lock;

    monitor-enter v0

    :try_start_1
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopTokensImpl;

    iget-object v1, v1, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/collection/LruCache;->size:I

    if-nez v1, :cond_5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_2
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    if-le v1, p2, :cond_4

    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopTokensImpl;

    iget-object v1, v1, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopTokensImpl;

    iget-object v1, v1, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "<get-entries>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    monitor-exit v0

    return-object p1

    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/StartStopTokensImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "key"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/LruCache;->size:I

    const-string/jumbo v3, "value"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/collection/LruCache;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    goto :goto_1

    :cond_4
    :goto_3
    monitor-exit v0

    return-object p1

    :cond_5
    :try_start_3
    const-string p0, "LruCache.sizeOf() is reporting inconsistent results!"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    monitor-exit v0

    throw p0

    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/internal/Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopTokensImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v1, p0, Landroidx/collection/LruCache;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroidx/collection/LruCache;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "LruCache[maxSize="

    iget-object v1, p0, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/internal/Lock;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Landroidx/collection/LruCache;->hitCount:I

    iget v3, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/2addr v3, v2

    if-eqz v3, :cond_0

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hits="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",misses="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/collection/LruCache;->missCount:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",hitRate="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
