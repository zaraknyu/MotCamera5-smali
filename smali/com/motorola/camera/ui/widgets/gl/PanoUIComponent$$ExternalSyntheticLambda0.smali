.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->showIdleAnimation(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->showIdleAnimation(Z)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v2

    add-float/2addr v2, v1

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Landroid/util/Size;

    invoke-direct {v3, v4}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v4, v7

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float v8, v4, v3

    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updateTranslation(ZFFLcom/motorola/camera/PreviewSize;Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    add-float/2addr v2, v5

    invoke-virtual {v3, v4, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setIdleArrowTexturesPosition()V

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x42300000    # 44.0f

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setPanoThumbnailTexBackgroundTranslation(FF)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
