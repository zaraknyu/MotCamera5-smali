.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->hide$1$1()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsSupported(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowControlPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->hide$1$1()V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->hide$1$1()V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->dirty()V

    goto/16 :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->dirty()V

    goto/16 :goto_0

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
