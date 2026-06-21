.class public final Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public final mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mBlurTexSize:Landroid/graphics/PointF;

.field public mContinuousBlur:Z

.field public mCopyPreview:Z

.field public mCurrentSplitMode:Z

.field public mIsTenBitMode:Z

.field public final mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

.field public mModeSwitchTargetRatio:F

.field public final mPreviewChangeList:Ljava/util/ArrayList;

.field public final mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mSurfaceChanged:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 2

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->windowBackground:I

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method


# virtual methods
.method public final animateModeSwitch()V
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/PreviewChange;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchTargetRatio:F

    iget v6, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v7, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iget-object v8, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v9, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v8, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    cmpl-float v10, v9, v8

    if-lez v10, :cond_0

    div-float/2addr v9, v8

    goto :goto_0

    :cond_0
    div-float v9, v8, v9

    :goto_0
    iget-boolean v8, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    invoke-static {v6, v7, v9, v8, v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v6

    iget v7, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v5, v7, v8, v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Landroid/graphics/RectF;

    move-result-object v13

    iget v5, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v6, v5, v7, v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Landroid/graphics/RectF;

    move-result-object v14

    iput v6, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchTargetRatio:F

    invoke-virtual {v13, v14}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    if-nez v4, :cond_4

    iget-boolean v0, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    move v4, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {v14, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v11, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v3, 0x14

    invoke-direct {v11, v1, v0, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    const/4 v6, 0x4

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v12

    if-gtz v9, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v25, v7

    move v7, v4

    move-object/from16 v4, v25

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v7

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    div-float/2addr v9, v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v15

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v15, v12, Landroid/graphics/PointF;->x:F

    mul-float/2addr v15, v9

    move/from16 v16, v0

    iget v0, v12, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v9

    invoke-virtual {v12, v15, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_3
    move/from16 v16, v0

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_3
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v18, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    const/4 v12, 0x1

    move-object v15, v4

    move-object v5, v6

    move v6, v8

    move v8, v9

    move/from16 v4, v16

    move-object v9, v0

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v12}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-wide/16 v19, 0x64

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-direct/range {v17 .. v24}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    move-object/from16 v0, v17

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v15}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    invoke-virtual {v0, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->animatePreviewSwitch(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_4
    move v4, v2

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    if-eqz v2, :cond_5

    iget-boolean v0, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_5
    return-void
.end method

.method public final applyPreviewChange$1(Z)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_4

    cmpl-float v5, v0, v4

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v5, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-direct {v0, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6, v7, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object v7

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v8, v4, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, v7, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v9, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v9, v3

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v6, v3

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v9, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v9, 0x3

    invoke-virtual {v6, v9, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v6, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-boolean v6, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/4 v5, 0x4

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    if-nez p1, :cond_2

    iget v0, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v9, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    invoke-virtual {v9, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_0

    :cond_2
    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mStencilSize:Landroid/util/SizeF;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v7, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    sub-float/2addr v4, v6

    iget-object v6, v7, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v6, v3

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    sub-float/2addr v6, v3

    invoke-virtual {v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v3, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, v3

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$2;

    move v3, v4

    move v4, v6

    move v6, v0

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;Landroid/util/SizeF;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/google/zxing/Result;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-wide/16 v12, 0xc8

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v17}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v10, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x2

    invoke-virtual {v0, v10, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mSurfaceChanged:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TenBitModeComponent"

    return-object p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDraw([F[F[F)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-static {v1, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z[F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    const/4 p3, -0x1

    invoke-static {p3}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const-string v0, "glStencilMask"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0xb90

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string v3, "glDisable"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v1, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z[F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {p3}, Landroid/opengl/GLES20;->glStencilMask(I)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 2

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mCopyPreview:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;Z[F[F)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceHolder;

    if-nez p2, :cond_4

    const-string p3, "CameraSurfaceViewComponent"

    const-string v1, "getSurfaceHolder, null surface holder"

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    const-string p1, "TenBitModeComponent"

    const-string p2, "Can\'t load preview frame due to 10 bit surface holder is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-static {p2, p1, p3, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :cond_6
    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mCopyPreview:Z

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mSurfaceChanged:Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mCurrentSplitMode:Z

    if-eq p2, v1, :cond_1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mCurrentSplitMode:Z

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->applyPreviewChange$1(Z)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->applyPreviewChange$1(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final previewModeChange$1(IIIZZZ)V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iput-boolean p6, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetBlurTex$1()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchTargetRatio:F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 12

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->resetBlurTex$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    return-void

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    iget-object v2, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    const-string v5, "MODE"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    const-string v5, "FROM_FACING"

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v5

    :cond_4
    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v3, v6, :cond_6

    if-ne v5, v9, :cond_5

    move v5, v8

    goto :goto_1

    :cond_5
    move v5, v9

    :cond_6
    :goto_1
    iget-object v6, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getTenBitSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v10

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v6, v7}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v6

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v3, v7, :cond_7

    move v3, v4

    move v4, v5

    move v5, v9

    goto :goto_2

    :cond_7
    move v3, v4

    move v4, v5

    move v5, v8

    :goto_2
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    const-string v7, "SRC_MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v11

    invoke-virtual {v2, v7, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v0, v7, :cond_8

    const/16 v2, 0x3e8

    :cond_8
    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->previewModeChange$1(IIIZZZ)V

    iput-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mCopyPreview:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->resetBlurTex$1()V

    goto :goto_3

    :cond_9
    move v3, v4

    move v4, v5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_TEN_BIT_MODE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v10, v0, :cond_a

    if-nez v10, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode(IIZ)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v8, v9

    :cond_b
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    if-eqz v8, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_4

    :cond_d
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->previewModeChange$1(IIIZZZ)V

    iput-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :cond_e
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v2, 0x3e8

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->previewModeChange$1(IIIZZZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :cond_f
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    if-eqz v0, :cond_16

    monitor-enter p0

    :try_start_2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 v0, 0x3

    invoke-direct {v3, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v4, 0xc8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "OPEN_GALLERY_CANCEL"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :cond_11
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v0, v2, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :cond_12
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :cond_13
    :goto_4
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    :cond_14
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mIsTenBitMode:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mSurfaceChanged:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->applyPreviewChange$1(Z)V

    :cond_15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_16
    :goto_5
    return-void
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
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
