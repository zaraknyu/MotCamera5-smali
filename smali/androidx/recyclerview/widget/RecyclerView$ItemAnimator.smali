.class public abstract Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAddDuration:J

.field public mChangeDuration:J

.field public mFinishedListeners:Ljava/util/ArrayList;

.field public mListener:Landroidx/recyclerview/widget/RecyclerView$7;

.field public mMoveDuration:J

.field public mRemoveDuration:J


# direct methods
.method public static buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)Z
.end method

.method public final dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 9

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$7;

    if-eqz p0, :cond_7

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_0

    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_0
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/media3/common/util/GlProgram;

    iget-object v4, v3, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-object v5, v3, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$7;

    iget v6, v3, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v7, 0x0

    if-ne v6, v0, :cond_2

    iget-object v0, v3, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-ne v0, v1, :cond_1

    :goto_0
    move v0, v7

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v8, 0x2

    if-eq v6, v8, :cond_6

    :try_start_0
    iput v8, v3, Landroidx/media3/common/util/GlProgram;->programId:I

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/GlProgram;->unhideViewInternal(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput v7, v3, Landroidx/media3/common/util/GlProgram;->programId:I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/GlProgram;->unhideViewInternal(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$7;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    iput v7, v3, Landroidx/media3/common/util/GlProgram;->programId:I

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after removing animated view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :goto_3
    iput v7, v3, Landroidx/media3/common/util/GlProgram;->programId:I

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void
.end method

.method public abstract endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public abstract isRunning()Z
.end method
