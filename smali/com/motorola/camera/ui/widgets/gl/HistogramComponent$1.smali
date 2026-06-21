.class public final Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzkw;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    return-void
.end method


# virtual methods
.method public final onCollisionCheck(Lcom/motorola/camera/SecureDataHelper;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    iget-object v4, v3, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v5, :cond_0

    iget v5, v6, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_0

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_0

    iget v5, v6, Landroid/graphics/RectF;->top:F

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    if-eqz v5, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v2, v6

    neg-float v6, v2

    invoke-virtual {v3, v6, v6}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v9, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v6, v9

    const/high16 v11, 0x3f800000    # 1.0f

    if-gez v10, :cond_6

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v12, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v10, v12

    if-gez v13, :cond_6

    iget v13, v4, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v15, v13, v14

    if-lez v15, :cond_6

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v16, v1, v15

    if-lez v16, :cond_6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_2

    iput v10, v4, Landroid/graphics/RectF;->left:F

    :cond_2
    cmpl-float v6, v13, v1

    if-lez v6, :cond_3

    iput v1, v4, Landroid/graphics/RectF;->top:F

    :cond_3
    cmpl-float v1, v12, v9

    if-lez v1, :cond_4

    iput v9, v4, Landroid/graphics/RectF;->right:F

    :cond_4
    cmpg-float v1, v15, v14

    if-gez v1, :cond_5

    iput v14, v4, Landroid/graphics/RectF;->bottom:F

    :cond_5
    invoke-virtual {v3}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v2

    sub-float v1, v11, v1

    goto :goto_1

    :cond_6
    move v1, v11

    :goto_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    move v7, v8

    :cond_7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return v5
.end method
