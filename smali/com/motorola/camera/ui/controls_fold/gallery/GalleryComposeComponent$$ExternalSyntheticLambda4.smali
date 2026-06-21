.class public final synthetic Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;FLandroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$1:F

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    iput p4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$3:I

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$4:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    iget v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$1:F

    cmpg-float v2, v3, v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v3, v2

    if-nez v2, :cond_1

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$3:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->splashView:Landroid/widget/ImageView;

    new-instance v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda4;->f$4:Landroid/graphics/Bitmap;

    invoke-static {v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->startSplashHideAnim(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
