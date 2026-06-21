.class public final Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;
.super Lcom/google/mlkit/common/internal/zzb;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$cameraData:Lcom/motorola/camera/CameraData;

.field public final synthetic val$iThumbnail:Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/CameraData;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->val$iThumbnail:Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;

    iput-object p2, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->val$cameraData:Lcom/motorola/camera/CameraData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResourceReady(Lcom/motorola/camera/thumbnail/ThumbnailKey;Landroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->val$iThumbnail:Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;

    check-cast p1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->val$cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->val$iThumbnail:Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    iget-boolean p1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mIsOverrideSize:Z

    iget-object p0, p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;->val$cameraData:Lcom/motorola/camera/CameraData;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result p1

    invoke-virtual {v0, p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setLargeKindBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, ".dng"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {v0, p0, p2, v1, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
