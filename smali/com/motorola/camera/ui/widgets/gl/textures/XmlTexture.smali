.class public Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# instance fields
.field public mColor:I

.field public mFixedSize:Z

.field public mResId:I

.field public mScaleHeight:F

.field public mScaleWidth:F

.field public mTextureState:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    .line 8
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I
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

.method public final declared-synchronized onPreDraw()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->updateTexture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->onPreDraw()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setColor(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method

.method public final setResource(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I
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

.method public final updateTexture()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void

    :cond_1
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v4, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    invoke-virtual {v5, v6, v4}, Landroid/graphics/PointF;->set(FF)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    mul-float/2addr v6, v5

    invoke-virtual {p0, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :cond_2
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    if-eq v4, v2, :cond_3

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    float-to-int v2, v2

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    float-to-int v2, v2

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void
.end method
