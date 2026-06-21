.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mPreviousValue:I

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mPreviousValue:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Landroidx/compose/runtime/Latch;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    const/4 v0, 0x0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
