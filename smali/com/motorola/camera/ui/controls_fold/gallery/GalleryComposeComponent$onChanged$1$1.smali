.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $data:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->$data:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->$data:Ljava/lang/Object;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->itemIdList:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;->$data:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v4

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;

    const/4 v5, 0x2

    invoke-direct {v4, p1, v5}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-wide v5, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->minTimestampForApplyAnimation:J

    iget-object p1, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->dataList:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/16 p1, 0x9

    invoke-direct {p0, v3, p1, v0, v4}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
