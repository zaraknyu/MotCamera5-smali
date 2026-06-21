.class public final Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$end:F


# direct methods
.method public synthetic constructor <init>(FILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->$r8$classId:I

    const/16 p2, 0x13

    invoke-direct {p0, p2}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->this$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->val$end:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->val$end:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->val$end:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setPreRotation(FF)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setPreRotation(FF)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
