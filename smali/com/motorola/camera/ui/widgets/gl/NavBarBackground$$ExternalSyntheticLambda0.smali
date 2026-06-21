.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->setFilterKeepOut(Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->setFilterKeepOut(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->reverseColor$2(Z)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->reverseColor$2(Z)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsMultiShot:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->setFilterKeepOut(Z)V

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->setFilterKeepOut(Z)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
