.class public Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# static fields
.field public static final TEXT_PAINT_ALIGN:Landroid/graphics/Paint$Align;


# instance fields
.field public mBColor:I

.field public mBackgroundPadding:I

.field public mLayout:Landroid/text/StaticLayout;

.field public mLayoutAlign:Landroid/text/Layout$Alignment;

.field public final mLineSpaceMultiplier:F

.field public mMaxWordWrapWidth:I

.field public mOutlineColor:I

.field public mOutlineWidth:F

.field public mPadding:I

.field public mRadius:F

.field public mShadowDx:F

.field public final mTextPaint:Landroid/text/TextPaint;

.field public mTextureState:I

.field public mValue:Ljava/lang/String;

.field public mWordWrapWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->TEXT_PAINT_ALIGN:Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FI)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FIIFI)V

    .line 30
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FIIFI)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FIIFI)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    .line 2
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayoutAlign:Landroid/text/Layout$Alignment;

    .line 3
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLineSpaceMultiplier:F

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mWordWrapWidth:I

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mMaxWordWrapWidth:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mRadius:F

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    .line 10
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBackgroundPadding:I

    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->TEXT_PAINT_ALIGN:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 14
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 15
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    mul-float/2addr v2, p3

    .line 16
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v2

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 18
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 19
    iget-boolean p3, p3, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontBold:Z

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 20
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 21
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p3, 0x3a83126f    # 0.001f

    cmpl-float p3, p6, p3

    if-ltz p3, :cond_1

    .line 22
    invoke-virtual {p1, p6, v0, v0, p7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 23
    :cond_1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mShadowDx:F

    .line 24
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 25
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    .line 26
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    return-void
.end method


# virtual methods
.method public final getLayout(Ljava/lang/String;)Landroid/text/StaticLayout;
    .locals 4

    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {p1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mShadowDx:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mWordWrapWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v2, v1

    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mMaxWordWrapWidth:I

    if-eq v1, v3, :cond_1

    if-le v2, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayoutAlign:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 v0, 0x0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLineSpaceMultiplier:F

    invoke-virtual {p1, v0, p0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayout(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p0

    .line 2
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->updateLayout$3()V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getScaledHeight()F
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->updateLayout$3()V

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    return p0
.end method

.method public final getScaledWidth()F
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->updateLayout$3()V

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p0

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I
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
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->updateTexture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->updateTexture()V

    :cond_1
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

.method public final resetBlendFunc()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final setBlendFunc()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    const/16 v1, 0x303

    if-eqz v0, :cond_0

    const/16 p0, 0x302

    invoke-static {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->sHighTextContrastEnable:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    sget v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    invoke-static {v0, v2, v3, p0}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const-string p0, "glBlendColor"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const p0, 0x8001

    invoke-static {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    :cond_1
    return-void
.end method

.method public final setShadowLayer(FFFI)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mShadowDx:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    return-void
.end method

.method public final setTextAlign(Landroid/text/Layout$Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayoutAlign:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayoutAlign:Landroid/text/Layout$Alignment;

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final setTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final setTextSize(F)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    mul-float/2addr v1, p1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final setWordWrapWidth(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mWordWrapWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mWordWrapWidth:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textureState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "INITIALIZED"

    goto :goto_0

    :cond_1
    const-string v1, "LAYOUT_ONLY"

    goto :goto_0

    :cond_2
    const-string v1, "UNINITIALIZED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wordWrapWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mWordWrapWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineSpacingMult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLineSpaceMultiplier:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", fixedBitmap:no"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I
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

.method public final updateLayout$3()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayout(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateTexture()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayout(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBackgroundPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBackgroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mRadius:F

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v4

    const/4 v5, 0x0

    if-lez v3, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v5, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mRadius:F

    invoke-virtual {v2, v3, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    cmpl-float v4, v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v4, :cond_3

    neg-float v4, v6

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mShadowDx:F

    neg-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBackgroundPadding:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_4
    :goto_2
    return-void
.end method
