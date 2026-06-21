.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mMaxAlpha:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_1

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackAlpha:F

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v0, 0x1

    invoke-direct {v4, v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v7

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mMaxAlpha:F

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x12c

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p0

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackAlpha:F

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v4, p0

    cmpl-double p0, v4, v2

    if-lez p0, :cond_3

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackAlpha:F

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->enableDisplayFlash(Z)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
