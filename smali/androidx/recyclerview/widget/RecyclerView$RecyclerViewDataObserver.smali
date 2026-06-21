.class public final Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/ripple/StateLayer;

    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/mlkit/vision/barcode/internal/zzj;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/barcode/internal/zzj;->updateFragmentMaxLifecycle(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/ripple/StateLayer;

    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->onChanged()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, p3, v3, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeInserted(II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/ripple/StateLayer;

    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->onChanged()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeMoved(II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/ripple/StateLayer;

    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->onChanged()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeRemoved(II)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/ripple/StateLayer;

    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->onChanged()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v4

    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public triggerUpdateProcessor()V
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
