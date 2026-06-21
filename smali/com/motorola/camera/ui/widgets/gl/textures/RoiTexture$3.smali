.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->$r8$classId:I

    const/16 p2, 0x13

    invoke-direct {p0, p2}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setAlpha(F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setAlpha(F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
