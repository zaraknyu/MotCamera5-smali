.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;
.super Lcom/google/mlkit/common/internal/zzb;
.source "SourceFile"


# instance fields
.field public final cameraData:Lcom/motorola/camera/CameraData;

.field public final mApplyAnimation:Z

.field public final mTargetView:Landroid/view/View;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;Landroid/widget/ImageView;ZLcom/motorola/camera/CameraData;)V
    .locals 1

    const-string/jumbo v0, "targetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->mApplyAnimation:Z

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->cameraData:Lcom/motorola/camera/CameraData;

    return-void
.end method


# virtual methods
.method public final onResourceReady(Lcom/motorola/camera/thumbnail/ThumbnailKey;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p2}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/4 v1, 0x3

    invoke-direct {p1, v1, p0, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
