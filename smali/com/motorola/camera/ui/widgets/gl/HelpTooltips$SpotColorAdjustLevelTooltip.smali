.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;
.super Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    const p1, 0x7f120612

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

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

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

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

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
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    if-eqz p0, :cond_0

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
    .locals 4

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p2

    const/high16 v3, 0x42880000    # 68.0f

    sub-float/2addr p2, v3

    mul-float/2addr p2, p3

    sub-float/2addr v1, p2

    rem-int/lit16 p2, p1, 0xb4

    const/16 v3, 0x5a

    if-ne p2, v3, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_0
    int-to-float p2, p2

    div-float/2addr p2, v2

    add-float/2addr p2, v1

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_2

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v0, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method
