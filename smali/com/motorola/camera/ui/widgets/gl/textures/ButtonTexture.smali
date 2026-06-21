.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mFgRes:I

.field public mFgResPressed:I

.field public mForceLoad:Z

.field public mLoaded:Z

.field public mMaxAlpha:F

.field public mPressedRes:I

.field public mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mUnpressedRes:I


# virtual methods
.method public abstract getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, -0x40000000    # -2.0f

    div-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->updateDrawableState()V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onLongPress(Landroid/graphics/PointF;Z)V
    .locals 0

    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public final declared-synchronized setButtonResources(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mPressedRes:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mUnpressedRes:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgRes:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgResPressed:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->updateDrawableState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateDrawableState()V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mForceLoad:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object v2

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v3, v3, 0x7

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mPressedRes:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mUnpressedRes:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(IZ)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object v2

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v3, v3, 0x7

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    if-eqz v3, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgResPressed:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgRes:I

    :goto_1
    invoke-virtual {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(IZ)V

    return-void
.end method
