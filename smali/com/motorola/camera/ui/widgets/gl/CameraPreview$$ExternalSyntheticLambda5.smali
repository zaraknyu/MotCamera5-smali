.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic f$1:F

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic f$4:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

.field public final synthetic f$5:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$1:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$3:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$4:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$5:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$2:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$3:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$4:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$1:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;->f$5:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;FLcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    return-void
.end method
