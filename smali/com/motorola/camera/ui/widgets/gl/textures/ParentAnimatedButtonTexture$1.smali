.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v0

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v2

    sub-float/2addr v0, v7

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr v0, v3

    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v3

    :cond_1
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;

    const/4 v1, 0x1

    invoke-direct {v4, p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;-><init>(Ljava/lang/Runnable;II)V

    add-float v8, v7, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x12c

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    filled-new-array {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimRotate:I

    invoke-virtual {v0, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 v1, 0x6

    invoke-direct {v5, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-wide/16 v6, 0x12c

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v4, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v0, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_4
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mMaxAlpha:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v1, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    sub-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->EPSILON_1:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    if-ne v2, v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 v1, 0x5

    invoke-direct {v4, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x12c

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v3, v11, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v0, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    :goto_3
    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
