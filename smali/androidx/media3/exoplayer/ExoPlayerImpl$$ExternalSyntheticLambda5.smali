.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:I

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    return-void
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraData;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/saving/SaveImageService;->removeExistingMediaStore(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p1, :cond_5

    iget-object v6, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->getScreenshotFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->splashView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.ui.controls_fold.gallery.GalleryComposeAdapter"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    new-instance v10, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {v10, v0, v1, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->dataList:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v9

    iget v8, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:I

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-wide p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    :goto_0
    iput-wide p0, v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->minTimestampForApplyAnimation:J

    new-instance v5, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;ILjava/util/ArrayList;Lkotlin/text/Regex$$ExternalSyntheticLambda0;)V

    iget-object p0, v7, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, v9, v5}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
