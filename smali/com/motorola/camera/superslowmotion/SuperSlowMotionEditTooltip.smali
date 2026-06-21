.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final anchor:Ljava/lang/Object;

.field public context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->$r8$classId:I

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f12061d

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->context:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->$r8$classId:I

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Ljava/lang/Object;

    const p1, 0x7f12061c

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->context:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public clickControl()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->clickControl()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPosition()Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->context:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeCenterX()F

    move-result v1

    add-float/2addr v1, v0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    new-instance p0, Landroid/graphics/Point;

    float-to-int v0, v1

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method
