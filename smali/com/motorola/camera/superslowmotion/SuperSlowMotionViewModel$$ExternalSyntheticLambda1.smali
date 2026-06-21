.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;

    check-cast p1, Landroid/graphics/Bitmap;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    check-cast p1, Ljava/util/List;

    const-string v0, "filterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v7, v4}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    check-cast v4, Landroid/util/Pair;

    if-eqz v4, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->updateFilterVisibility()V

    :cond_7
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->index:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_a

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selectedBitmap:Landroidx/lifecycle/LiveData;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/graphics/Bitmap;

    :cond_9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/graphics/Bitmap;

    :cond_b
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    check-cast p1, Ljava/util/List;

    const-string v0, "layoutList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->layoutList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Triple;

    new-instance v4, Lkotlin/Triple;

    iget-object v5, v3, Lkotlin/Triple;->first:Ljava/lang/Object;

    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    iget-object v7, v3, Lkotlin/Triple;->second:Ljava/lang/Object;

    invoke-direct {v6, v7}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v3, Lkotlin/Triple;->third:Ljava/lang/Object;

    invoke-direct {v7, v3}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_8

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Triple;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Triple;

    iget-object v5, v4, Lkotlin/Triple;->first:Ljava/lang/Object;

    iget-object v6, v2, Lkotlin/Triple;->first:Ljava/lang/Object;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v3, v2, Lkotlin/Triple;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/MutableLiveData;

    iget-object v5, v4, Lkotlin/Triple;->second:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v2, v2, Lkotlin/Triple;->third:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v4, Lkotlin/Triple;->third:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->updateLayoutVisibility()V

    :cond_12
    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    check-cast p1, [I

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/LinkedHashSet;

    iget-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_9

    :cond_14
    aget v1, p1, v3

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v5, v4, v3

    if-ne v1, v5, :cond_15

    aget v1, p1, v2

    goto :goto_9

    :cond_15
    aget v5, p1, v2

    aget v4, v4, v2

    :goto_9
    if-eqz v1, :cond_18

    aget v4, p1, v3

    iget-object v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v3, v5, v3

    if-eq v4, v3, :cond_17

    aget v3, p1, v2

    aget v2, v5, v2

    if-ne v3, v2, :cond_16

    goto :goto_a

    :cond_16
    sget-object v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->HANDLE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    :goto_a
    sget-object v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->CARETS:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_b
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    int-to-long v0, v1

    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2, v3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->schedulePlaybackSpeedChangeMessages()V

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
