.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/motorola/camera/CameraData;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;ZLcom/motorola/camera/CameraData;ZI)V
    .locals 0

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$2:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$3:Z

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$4:Lcom/motorola/camera/CameraData;

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$5:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz v3, :cond_5

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$3:Z

    const/4 v7, 0x1

    xor-int/lit8 v5, v1, 0x1

    iget-object v8, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$1:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$2:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v8, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryProcessBar:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Thumbnail update"

    invoke-static {v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$4:Lcom/motorola/camera/CameraData;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v4

    iget-wide v1, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->largeKindDataId:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$5:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_0
    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->canShow$1()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->show()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->hide()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-boolean v0, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$1:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$2:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    iget-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$3:Z

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$4:Lcom/motorola/camera/CameraData;

    iget-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;->f$5:Z

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;ZLcom/motorola/camera/CameraData;ZI)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
