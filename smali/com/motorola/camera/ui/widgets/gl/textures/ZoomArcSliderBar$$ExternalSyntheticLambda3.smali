.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;->onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v5, v0, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v5

    div-float/2addr v5, v2

    add-float/2addr v5, v0

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v7

    div-float/2addr v7, v2

    add-float/2addr v7, v5

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v7

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3, v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    neg-float v2, v2

    invoke-virtual {v3, v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateDots(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateModeIcon(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mZoomSegmentValueList:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mInitialized:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->doLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v4, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v3, 0x0

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mShortcutItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mShortcutItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->unloadTexture()V

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10, v4, v1}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomValueX(IZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v8, v0, v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;I)V

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->loadTexture()V

    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v5

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object v9

    iput v7, v9, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    sget v3, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->ITEM_SIZE:F

    mul-float/2addr v3, v5

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mViewWidth:I

    int-to-float v9, v8

    int-to-float v10, v7

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0x18

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v9, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v9, v7

    :goto_4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_9

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;

    neg-int v11, v8

    int-to-float v11, v11

    div-float/2addr v11, v7

    add-float/2addr v11, v9

    int-to-float v12, v1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v12

    mul-float/2addr v13, v3

    add-float/2addr v13, v11

    const/high16 v11, 0x41c00000    # 24.0f

    mul-float/2addr v11, v5

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mRtl:Z

    if-eqz v12, :cond_8

    const/high16 v12, -0x40800000    # -1.0f

    goto :goto_5

    :cond_8
    move v12, v6

    :goto_5
    mul-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOrientation:F

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOrientation:F

    invoke-virtual {v0, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->setPreRotation(FF)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
