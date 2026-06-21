.class public final Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCallback:Ljava/lang/Object;

.field public mExistingUpdateTypes:I

.field public mOpReorderer:Ljava/lang/Object;

.field public final mPendingUpdates:Ljava/lang/Object;

.field public mPostponedList:Ljava/lang/Object;

.field public final mUpdateOpPool:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$7;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 16
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    .line 17
    new-instance p1, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v1, Ljava/util/PriorityQueue;

    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    if-eqz v2, :cond_6

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    iget v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    if-lt v2, v4, :cond_0

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-wide v4, v2, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    :goto_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v4, p3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget p3, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, p3, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    check-cast p3, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz p3, :cond_2

    iget-wide v4, p3, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    iget-object p0, p3, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-direct {p3}, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    :goto_1
    iget-object v0, p3, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/ArrayList;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v4

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    :cond_4
    invoke-static {v7}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-wide p1, p3, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    if-eq p1, v3, :cond_5

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public applySupportBackgroundTint()V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput-boolean v4, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-boolean v4, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    return-void

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    return-void

    :cond_5
    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_6
    return-void
.end method

.method public canFindInPreLayout(I)Z
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_0
    if-ne v5, v7, :cond_2

    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    :goto_2
    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public consumePostponedUpdates()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$7;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/ArrayList;)V

    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method public consumeUpdatesInOnePass()V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$7;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->offsetPositionsForMove(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v6, v7, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v6, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v7, v5

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$7;->offsetPositionsForAdd(II)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/ArrayList;)V

    iput v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method public dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 13

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Pools$SimplePool;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/16 v3, 0x8

    if-eq v1, v3, :cond_8

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v1

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v4, v5, :cond_1

    if-ne v4, v6, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "op should be remove or update."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v7, v2

    move v8, v7

    :goto_1
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x0

    if-ge v7, v9, :cond_6

    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v11, v4, v7

    add-int/2addr v11, v9

    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v11, v9}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    iget v11, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v11, v5, :cond_3

    if-eq v11, v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v1, 0x1

    if-ne v9, v12, :cond_4

    goto :goto_2

    :cond_3
    if-ne v9, v1, :cond_4

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v12, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v12, v11, v1, v8}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    iput-object v10, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v1, v6, :cond_5

    add-int/2addr v3, v8

    :cond_5
    move v8, v2

    move v1, v9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iget-object v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iput-object v10, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    if-lez v8, :cond_7

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v2, p1, v1, v8}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    iput-object v10, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "should not dispatch add or move for pre layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$7;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$7;->markViewHoldersUpdated(IILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return-void
.end method

.method public findPositionOffset(II)I
    .locals 5

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public flushQueueDownToSize(I)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v0, Ljava/util/PriorityQueue;

    :goto_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    iget-wide v5, v1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v4, v5, v6, v7}, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz v2, :cond_1

    iget-wide v2, v2, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-wide v4, v1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasPendingUpdates()Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    invoke-static {v1, p1, v4, p2}, Landroidx/core/view/MenuHostHelper;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/core/view/MenuHostHelper;

    move-result-object v1

    iget-object v2, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Landroid/content/res/TypedArray;

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/content/res/TypedArray;

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v8, 0x0

    move-object v5, p1

    move v7, p2

    invoke-static/range {v2 .. v8}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v9, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {v9, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v4, p2, v3}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/AdapterHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v9, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p0}, Landroidx/core/view/MenuHostHelper;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {v9, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v9, p0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->recycle()V

    throw p0
.end method

.method public obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {p0}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iput p3, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iput p4, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    return-object p0

    :cond_0
    iput p2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iput p3, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iput p4, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public onSetBackgroundDrawable()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->applySupportBackgroundTint()V

    return-void
.end method

.method public onSetBackgroundResource(I)V
    .locals 3

    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->applySupportBackgroundTint()V

    return-void
.end method

.method public postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    iget p0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$7;->offsetPositionsForMove(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown update op type for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$7;->markViewHoldersUpdated(IILjava/lang/Object;)V

    return-void

    :cond_2
    iget p0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void

    :cond_3
    iget p0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$7;->offsetPositionsForAdd(II)V

    return-void
.end method

.method public preProcess()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v1, Landroidx/core/util/Pools$SimplePool;

    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object v3, v0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/OpReorderer;

    iget-object v4, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x8

    const/4 v10, -0x1

    if-ltz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v11, v9, :cond_1

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_1
    move v8, v6

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    move v5, v10

    :goto_2
    const/4 v8, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-eq v5, v10, :cond_22

    add-int/lit8 v9, v5, 0x1

    iget-object v13, v3, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast v13, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v7, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v7, v6, :cond_1d

    if-eq v7, v8, :cond_b

    if-eq v7, v11, :cond_4

    goto :goto_0

    :cond_4
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_5

    add-int/lit8 v8, v8, -0x1

    iput v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_5
    iget v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v10

    if-ge v7, v8, :cond_6

    add-int/lit8 v10, v10, -0x1

    iput v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v13, v8, v11, v7, v6}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    goto :goto_4

    :cond_6
    :goto_3
    move-object v6, v12

    :goto_4
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v7, v8, :cond_7

    add-int/lit8 v8, v8, 0x1

    iput v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_5

    :cond_7
    iget v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v10

    if-ge v7, v8, :cond_8

    sub-int/2addr v8, v7

    add-int/lit8 v7, v7, 0x1

    iget-object v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v13, v10, v11, v7, v8}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v7

    iget v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v10, v8

    iput v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_6

    :cond_8
    :goto_5
    move-object v7, v12

    :goto_6
    invoke-virtual {v4, v9, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v8, :cond_9

    invoke-virtual {v4, v5, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v12, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v8, v13, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v8, Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v8, v15}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :goto_7
    if-eqz v6, :cond_a

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    if-eqz v7, :cond_0

    invoke-virtual {v4, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v10, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v7, v10, :cond_d

    iget v11, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v11, v7, :cond_c

    iget v11, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int v7, v10, v7

    if-ne v11, v7, :cond_c

    move v7, v6

    :goto_8
    const/16 v16, 0x0

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    :cond_d
    iget v11, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v12, v10, 0x1

    if-ne v11, v12, :cond_e

    iget v11, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v10

    if-ne v11, v7, :cond_e

    move v7, v6

    move/from16 v16, v7

    goto :goto_9

    :cond_e
    move/from16 v16, v6

    const/4 v7, 0x0

    :goto_9
    iget v11, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v10, v11, :cond_f

    add-int/lit8 v11, v11, -0x1

    iput v11, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_a

    :cond_f
    iget v12, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_10

    add-int/lit8 v12, v12, -0x1

    iput v12, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput v8, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iput v6, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v5, :cond_0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v5, v13, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v5, Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v5, v15}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    :goto_a
    iget v6, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, v10, :cond_12

    add-int/lit8 v10, v10, 0x1

    iput v10, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_11
    const/4 v11, 0x0

    goto :goto_b

    :cond_12
    iget v11, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_11

    sub-int/2addr v10, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    invoke-virtual {v13, v11, v8, v6, v10}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v17

    iget v6, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v8

    iput v6, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v6, v17

    goto :goto_c

    :goto_b
    move-object v6, v11

    :goto_c
    if-eqz v7, :cond_13

    invoke-virtual {v4, v5, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v11, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v5, v13, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v5, Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v5, v14}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    if-eqz v16, :cond_17

    if-eqz v6, :cond_15

    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v7, v8, :cond_14

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_14
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v7, v8, :cond_15

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_15
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v7, v8, :cond_16

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_16
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v7, v8, :cond_1b

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_d

    :cond_17
    if-eqz v6, :cond_19

    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v7, v8, :cond_18

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_18
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v7, v8, :cond_19

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_19
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v7, v8, :cond_1a

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_1a
    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v7, v8, :cond_1b

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_1b
    :goto_d
    invoke-virtual {v4, v5, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v7, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v7, v8, :cond_1c

    invoke-virtual {v4, v9, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1c
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_e
    if-eqz v6, :cond_0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    iget v6, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v6, v7, :cond_1e

    move/from16 v16, v10

    goto :goto_f

    :cond_1e
    const/16 v16, 0x0

    :goto_f
    iget v8, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v8, v7, :cond_1f

    add-int/lit8 v16, v16, 0x1

    :cond_1f
    if-gt v7, v8, :cond_20

    iget v7, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v7

    iput v8, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_20
    iget v7, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v7, v6, :cond_21

    iget v8, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v8

    iput v6, v14, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_21
    add-int v7, v7, v16

    iput v7, v15, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v4, v5, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v9, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_36

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v12, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v12, v6, :cond_35

    if-eq v12, v8, :cond_2c

    if-eq v12, v11, :cond_24

    if-eq v12, v9, :cond_23

    :goto_11
    move/from16 v18, v6

    const/4 v6, 0x0

    goto/16 :goto_1c

    :cond_23
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_11

    :cond_24
    iget v12, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v13, v12

    move v9, v10

    move v14, v12

    const/4 v15, 0x0

    :goto_12
    if-ge v12, v13, :cond_29

    invoke-virtual {v2, v12}, Landroidx/recyclerview/widget/RecyclerView$7;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v18

    if-nez v18, :cond_27

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v18

    if-eqz v18, :cond_25

    goto :goto_13

    :cond_25
    if-ne v9, v6, :cond_26

    iget-object v9, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v9, v11, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v14, v12

    const/4 v15, 0x0

    :cond_26
    const/4 v9, 0x0

    goto :goto_14

    :cond_27
    :goto_13
    if-nez v9, :cond_28

    iget-object v9, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v9, v11, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v14, v12

    const/4 v15, 0x0

    :cond_28
    move v9, v6

    :goto_14
    add-int/2addr v15, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_29
    iget v12, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v15, v12, :cond_2a

    iget-object v12, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v1, v7}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12, v11, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v7

    :cond_2a
    if-nez v9, :cond_2b

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_11

    :cond_2b
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_11

    :cond_2c
    iget v9, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v12, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v12, v9

    move v13, v9

    move v15, v10

    const/4 v14, 0x0

    :goto_15
    if-ge v13, v12, :cond_32

    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/RecyclerView$7;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v18

    if-nez v18, :cond_2d

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v18

    if-eqz v18, :cond_2e

    :cond_2d
    move/from16 v18, v6

    const/4 v6, 0x0

    goto :goto_17

    :cond_2e
    move/from16 v18, v6

    if-ne v15, v6, :cond_2f

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v8, v9, v14}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move/from16 v6, v18

    goto :goto_16

    :cond_2f
    const/4 v15, 0x0

    const/4 v6, 0x0

    :goto_16
    const/4 v15, 0x0

    goto :goto_19

    :goto_17
    if-nez v15, :cond_30

    invoke-virtual {v0, v6, v8, v9, v14}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move/from16 v6, v18

    goto :goto_18

    :cond_30
    const/4 v6, 0x0

    :goto_18
    move/from16 v15, v18

    :goto_19
    if-eqz v6, :cond_31

    sub-int/2addr v13, v14

    sub-int/2addr v12, v14

    move/from16 v14, v18

    goto :goto_1a

    :cond_31
    add-int/lit8 v14, v14, 0x1

    :goto_1a
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v18

    goto :goto_15

    :cond_32
    move/from16 v18, v6

    iget v6, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v14, v6, :cond_33

    const/4 v6, 0x0

    iput-object v6, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v1, v7}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6, v8, v9, v14}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v7

    goto :goto_1b

    :cond_33
    const/4 v6, 0x0

    :goto_1b
    if-nez v15, :cond_34

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1c

    :cond_34
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1c

    :cond_35
    move/from16 v18, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_1c
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    const/16 v9, 0x8

    goto/16 :goto_10

    :cond_36
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public recycleUpdateOpsAndClearList(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v3, Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v3, v2}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->applySupportBackgroundTint()V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->applySupportBackgroundTint()V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->applySupportBackgroundTint()V

    return-void
.end method

.method public updatePositionWithPostponed(II)I
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Pools$SimplePool;

    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/16 v3, 0x8

    if-ltz v1, :cond_d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v6, 0x2

    if-ne v5, v3, :cond_8

    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v3, v5, :cond_0

    move v7, v3

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v3

    move v7, v5

    :goto_1
    if-lt p1, v7, :cond_6

    if-gt p1, v8, :cond_6

    if-ne v7, v3, :cond_3

    if-ne p2, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_1
    if-ne p2, v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_4
    if-ne p2, v6, :cond_5

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v3, :cond_c

    if-ne p2, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_8
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_a

    if-ne v5, v2, :cond_9

    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_9
    if-ne v5, v6, :cond_c

    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_4

    :cond_a
    if-ne p2, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    :cond_b
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_5
    if-ltz p2, :cond_11

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_f

    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v2, v5, :cond_e

    if-gez v2, :cond_10

    :cond_e
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v4, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v2, :cond_10

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v4, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method
