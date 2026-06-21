.class public final synthetic Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

.field public final synthetic f$1:F

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->getScreenshotFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->splashView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;

    iget v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;->f$1:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;FLandroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
