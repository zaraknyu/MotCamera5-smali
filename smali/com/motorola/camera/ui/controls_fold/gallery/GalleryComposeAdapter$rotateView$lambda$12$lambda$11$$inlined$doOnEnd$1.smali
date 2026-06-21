.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $onAnimationEnd$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $targetPosition$inlined:I

.field public final synthetic $targetRotation$inlined:F

.field public final synthetic $this_apply$inlined:Landroid/view/View;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Landroid/view/View;IFLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$this_apply$inlined:Landroid/view/View;

    iput p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$targetPosition$inlined:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$targetRotation$inlined:F

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$onAnimationEnd$inlined:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->dataList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget v6, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$targetPosition$inlined:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object v6, v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v6

    iget-object v8, v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    iget-object v9, v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v10

    cmp-long v6, v6, v10

    iget v7, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$targetRotation$inlined:F

    if-nez v6, :cond_0

    const-wide/16 v10, 0x0

    const/16 v6, 0xbff

    invoke-static {v9, v7, v10, v11, v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->copy$default(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;FJI)Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->copy$default(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;)Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/16 v6, 0x3ff

    invoke-static {v9, v7, v0, v1, v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->copy$default(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;FJI)Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->copy$default(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;)Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$this_apply$inlined:Landroid/view/View;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$rotateView$lambda$12$lambda$11$$inlined$doOnEnd$1;->$onAnimationEnd$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
