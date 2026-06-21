.class public final Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static final GOLDEN_RATIO:F


# instance fields
.field public final mBatch:Lcom/tinder/StateMachine;

.field public mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public mGridType:I

.field public mLineWidth:F

.field public mPadding:F

.field public mRect:Landroid/graphics/RectF;

.field public final mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->GOLDEN_RATIO:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance p1, Lcom/tinder/StateMachine;

    const/16 v0, 0x1c

    invoke-direct {p1, v0}, Lcom/tinder/StateMachine;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->GREEN:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->setGridType(I)V

    return-void
.end method

.method public static getHeight(Landroid/graphics/RectF;)F
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final buildGrid()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    return-void

    :pswitch_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v0}, Lcom/tinder/StateMachine;->clearDrawList()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v4

    div-float/2addr v4, v3

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v4

    invoke-direct {v5, v7, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-direct {v7, v6, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v3, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-direct {v5, v7, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v8, v7, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v3, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v5, 0x3e425ed1

    mul-float/2addr v3, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v5

    const v6, 0x3e171c72

    mul-float/2addr v5, v6

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v3

    iget v10, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v5

    invoke-direct {v7, v9, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v3

    invoke-direct {v9, v8, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v3

    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v5

    invoke-direct {v7, v9, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v3

    invoke-direct {v9, v8, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v3

    iget v10, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v5

    invoke-direct {v7, v9, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v5

    invoke-direct {v10, v9, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v3

    iget v3, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    invoke-direct {v7, v9, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v5

    invoke-direct {v3, v9, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v5, 0x3df01ac5

    mul-float/2addr v3, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v5

    const v6, 0x3db41414

    mul-float/2addr v5, v6

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v3

    iget v10, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v5

    invoke-direct {v7, v9, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v3

    invoke-direct {v9, v8, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v3

    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v5

    invoke-direct {v7, v9, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v3

    invoke-direct {v9, v8, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v3

    iget v10, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v5

    invoke-direct {v7, v9, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v5

    invoke-direct {v10, v9, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v3

    iget v3, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    invoke-direct {v7, v9, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v5

    invoke-direct {v3, v9, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float/2addr v3, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    neg-float v3, v3

    neg-float v5, v5

    :cond_1
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v10, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v4

    sub-float v4, v10, v3

    invoke-direct {v7, v9, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v3

    invoke-direct {v4, v8, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v6, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    sub-float v2, v7, v5

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v2, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    add-float/2addr v7, v5

    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v7, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const v3, 0x3e904104

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v3

    const v4, 0x3ead5555

    mul-float/2addr v3, v4

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    iget v8, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v3

    invoke-direct {v5, v7, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v2

    invoke-direct {v7, v6, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v3

    invoke-direct {v5, v7, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v2

    invoke-direct {v7, v6, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    iget v8, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v3

    invoke-direct {v5, v7, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v3

    invoke-direct {v8, v7, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v2

    iget v2, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-direct {v5, v7, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v3

    invoke-direct {v2, v7, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v1, v0}, Lcom/tinder/StateMachine;->setDrawList(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sget v3, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->GOLDEN_RATIO:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v3

    cmpl-float v3, v3, v1

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v3}, Lcom/tinder/StateMachine;->clearDrawList()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v7, v8

    iget v9, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v2

    invoke-direct {v5, v7, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v8

    invoke-direct {v7, v6, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v7, v8

    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v2

    invoke-direct {v5, v7, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v8

    invoke-direct {v2, v6, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v0

    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v7, v8

    invoke-direct {v4, v6, v7, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v8

    invoke-direct {v7, v6, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v2, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v0, v7

    invoke-direct {v4, v6, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v7

    invoke-direct {v0, v6, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v2, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v3}, Lcom/tinder/StateMachine;->setDrawList(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_4
    invoke-virtual {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    return-void

    :pswitch_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Lcom/tinder/StateMachine;->clearDrawList()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized createGrid(II)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_3

    if-ge p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v0}, Lcom/tinder/StateMachine;->clearDrawList()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->getHeight(Landroid/graphics/RectF;)F

    move-result v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v8, v9

    iget v10, v7, Landroid/graphics/RectF;->top:F

    int-to-float v11, v4

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    invoke-direct {v6, v8, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v9

    invoke-direct {v8, v7, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v5, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    int-to-float v2, p2

    div-float/2addr p1, v2

    :goto_1
    if-ge v3, p2, :cond_2

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    int-to-float v7, v3

    mul-float/2addr v7, p1

    add-float/2addr v7, v6

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v6, v8

    invoke-direct {v4, v7, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v8

    invoke-direct {v6, v7, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v2, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p1, v0}, Lcom/tinder/StateMachine;->setDrawList(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
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

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p0, p1, p2}, Lcom/tinder/StateMachine;->batchDraw([F[F)V

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

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

.method public final setGridType(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->buildGrid()V

    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Lcom/tinder/StateMachine;->clearDrawList()V

    return-void
.end method
