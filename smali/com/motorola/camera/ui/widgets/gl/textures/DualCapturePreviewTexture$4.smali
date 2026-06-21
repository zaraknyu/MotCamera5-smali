.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

.field public final synthetic val$alpha:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;FI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->$r8$classId:I

    const/16 p3, 0x13

    invoke-direct {p0, p3}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->val$alpha:F

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->val$alpha:F

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->val$alpha:F

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p0

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v1, 0x1

    if-nez p1, :cond_1

    cmpl-float p0, p0, v2

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;->val$alpha:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
