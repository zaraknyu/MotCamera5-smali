.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, p0}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, p0}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V

    goto/16 :goto_4

    :cond_0
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    invoke-direct {v6, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v7, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;

    invoke-direct {v7, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v8, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/FrontZoomComponent;

    invoke-direct {v7, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v8, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/RearSlaveZoomComponent;

    invoke-direct {v7, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v8, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->CLI_SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v7, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v7, Ljava/util/EnumSet;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR_VIDEO:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v7, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v7, Ljava/util/EnumSet;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    :goto_0
    if-nez v7, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoSupported()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoSupported()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_5

    :cond_4
    :goto_1
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-direct {v6, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v7, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    invoke-direct {v6, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v7, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    invoke-direct {v6, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v7, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {v6, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v7, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {v6, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v7, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isGroupSelfieSupported(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ACTIVE_PHOTO:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v5, :cond_c

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->TILT_SHIFT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v5, v5, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumSet;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TILT_SHIFT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoSupported(Z)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->AI_GROUP_PHOTO:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeSupported(Z)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;

    invoke-direct {v5, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PERFECT_ME:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v3, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v3}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v6, :cond_11

    goto :goto_3

    :cond_11
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mOrientation:I

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onRotate(I)V

    goto :goto_3

    :cond_12
    invoke-virtual {v3}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "constructorStage2 init dur:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "TextureManager"

    invoke-static {v1, v2, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_13
    :goto_4
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_3D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->$r8$lambda$ibl6679ekeL_FjZb7J87_L0pdRI(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->checkMainUiLoading()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
