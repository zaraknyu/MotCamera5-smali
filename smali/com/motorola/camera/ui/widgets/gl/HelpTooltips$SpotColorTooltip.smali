.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;
.super Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    const p1, 0x7f12061b

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(I)V

    const/high16 p1, 0x41e00000    # 28.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void
.end method

.method public final markDismissed()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void
.end method

.method public final shouldDismiss(Lcom/google/zxing/Result;)Z
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final shouldShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateDisplay(ILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 6

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, p3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v5, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v5

    mul-float/2addr v5, p3

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    div-float/2addr p2, v2

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p3, p3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    sub-float v4, p2, p3

    :cond_0
    if-eqz p1, :cond_3

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_4

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v1

    goto :goto_0

    :cond_2
    neg-float v1, v1

    goto :goto_1

    :cond_3
    add-float/2addr v4, v1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x4

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v1, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method
