.class public final Landroidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final sGapWorker:Ljava/lang/ThreadLocal;

.field public static final sTaskComparator:Landroidx/viewpager/widget/ViewPager$1;


# instance fields
.field public mFrameIntervalNs:J

.field public mPostTimeNs:J

.field public final mRecyclerViews:Ljava/util/ArrayList;

.field public final mTasks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Landroidx/viewpager/widget/ViewPager$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public static prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/GlProgram;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RV Prefetch forced - needed next frame"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :goto_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1
.end method


# virtual methods
.method public final postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempting to post unregistered view!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/collection/CircularIntArray;

    iput p2, p0, Landroidx/collection/CircularIntArray;->head:I

    iput p3, p0, Landroidx/collection/CircularIntArray;->tail:I

    return-void
.end method

.method public final prefetch(J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v9

    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/collection/CircularIntArray;

    if-nez v9, :cond_0

    invoke-virtual {v10, v8, v5}, Landroidx/collection/CircularIntArray;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v8, v10, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    add-int/2addr v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v6, v5

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v6, v4, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getWindowVisibility()I

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_4

    :cond_2
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/collection/CircularIntArray;

    iget v11, v10, Landroidx/collection/CircularIntArray;->head:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v10, Landroidx/collection/CircularIntArray;->tail:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v12, v11

    move v11, v5

    :goto_2
    iget v13, v10, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    mul-int/lit8 v13, v13, 0x2

    if-ge v11, v13, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v7, v13, :cond_3

    new-instance v13, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/GapWorker$Task;

    :goto_3
    iget-object v14, v10, Landroidx/collection/CircularIntArray;->elements:[I

    add-int/lit8 v15, v11, 0x1

    aget v15, v14, v15

    if-gt v15, v12, :cond_4

    move v5, v8

    :cond_4
    iput-boolean v5, v13, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    iput v12, v13, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iput v15, v13, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iput-object v9, v13, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    aget v5, v14, v11

    iput v5, v13, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x2

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    sget-object v3, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Landroidx/viewpager/widget/ViewPager$1;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GapWorker$Task;

    iget-object v5, v4, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_7

    goto/16 :goto_b

    :cond_7
    iget-boolean v6, v4, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    const-wide v9, 0x7fffffffffffffffL

    if-eqz v6, :cond_8

    move-wide v6, v9

    goto :goto_6

    :cond_8
    move-wide v6, v1

    :goto_6
    iget v11, v4, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    invoke-static {v5, v11, v6, v7}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_9

    goto :goto_9

    :cond_9
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v6, :cond_c

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v6}, Landroidx/media3/common/util/GlProgram;->getUnfilteredChildCount()I

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_a
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v7, :cond_b

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_b
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_c
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/collection/CircularIntArray;

    invoke-virtual {v6, v5, v8}, Landroidx/collection/CircularIntArray;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v7, v6, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    if-eqz v7, :cond_f

    cmp-long v7, v1, v9

    if-nez v7, :cond_d

    :try_start_0
    const-string v7, "RV Nested Prefetch"

    goto :goto_7

    :cond_d
    const-string v7, "RV Nested Prefetch forced - needed next frame"

    :goto_7
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput v8, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    iput v9, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    iput-boolean v9, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v9, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    const/4 v9, 0x0

    :goto_8
    iget v7, v6, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v9, v7, :cond_e

    iget-object v7, v6, Landroidx/collection/CircularIntArray;->elements:[I

    aget v7, v7, v9

    invoke-static {v5, v7, v1, v2}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x2

    goto :goto_8

    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_f
    :goto_9
    const/4 v9, 0x0

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :goto_a
    iput-boolean v9, v4, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    iput v9, v4, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iput v9, v4, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    iput v9, v4, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_10
    :goto_b
    return-void
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "RV Prefetch"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :goto_0
    iput-wide v1, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-wide v5, v1

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    iput-wide v1, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method
