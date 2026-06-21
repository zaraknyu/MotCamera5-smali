.class public final Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mBatch:Lcom/tinder/StateMachine;

.field public mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public mFrameHeight:F

.field public mFrameWidth:F

.field public mLineWidth:F

.field public mRect:Landroid/graphics/RectF;

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance p1, Lcom/tinder/StateMachine;

    const/16 v0, 0x1c

    invoke-direct {p1, v0}, Lcom/tinder/StateMachine;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setFrameType(I)V

    return-void
.end method


# virtual methods
.method public final buildFrame()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Lcom/tinder/StateMachine;->clearDrawList()V

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->createFrame(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->createFrame(I)V

    return-void
.end method

.method public final declared-synchronized createFrame(I)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    cmpl-float v0, v2, v1

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v0}, Lcom/tinder/StateMachine;->clearDrawList()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F

    div-float/2addr v4, v3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v5, v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v5

    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    sget v7, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v8

    const/high16 v9, 0x437a0000    # 250.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    goto :goto_0

    :cond_1
    sget v7, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    :goto_0
    add-float/2addr v5, v7

    sget-object v7, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v8

    const/high16 v9, 0x42340000    # 45.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    if-ne p1, v6, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    sub-float v8, v5, v2

    invoke-direct {v4, v7, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-direct {v7, v6, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p1, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    invoke-direct {v4, v7, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-direct {v2, v6, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p1, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    div-float/2addr v6, v3

    add-float/2addr v6, v4

    invoke-direct {v2, v6, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4, v6, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    div-float/2addr v6, v3

    sub-float/2addr v4, v6

    invoke-direct {v2, v4, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v3

    sub-float v3, v5, v4

    add-float/2addr v5, v4

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, p1

    sub-float/2addr v8, v2

    invoke-direct {v6, v8, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v9, v8, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, p1

    add-float/2addr v8, v2

    invoke-direct {v6, v8, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v9, v8, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, p1

    sub-float/2addr v9, v2

    invoke-direct {v6, v9, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, p1

    add-float/2addr v8, v2

    invoke-direct {v9, v8, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, p1

    sub-float/2addr v8, v2

    invoke-direct {v4, v8, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, p1

    add-float/2addr v6, v2

    invoke-direct {v8, v6, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v3, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-virtual {v2, v7, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p1, v0}, Lcom/tinder/StateMachine;->setDrawList(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p0, p1, p2}, Lcom/tinder/StateMachine;->batchDraw([F[F)V

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p1}, Lcom/tinder/StateMachine;->getDrawList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setFrameType(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    :cond_0
    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Lcom/tinder/StateMachine;->clearDrawList()V

    return-void
.end method
