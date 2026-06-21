.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

.field public final synthetic f$1:Lcom/motorola/camera/ui/widgets/gl/PostCapture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/ui/widgets/gl/PostCapture;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->removePostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->addPostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
