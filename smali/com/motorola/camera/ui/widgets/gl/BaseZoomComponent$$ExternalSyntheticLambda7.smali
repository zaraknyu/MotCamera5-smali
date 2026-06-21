.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 7

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAspectRatioSquare()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/16 p1, 0xb4

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    int-to-float v5, p1

    invoke-virtual {v1, v5, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    int-to-float v5, v0

    invoke-virtual {v1, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setPreRotation(FF)V

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAspectRatioSquare()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-interface {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updateLayoutSize(Z)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-interface {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updatePostTranslation(Z)V

    :cond_5
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    int-to-float p1, p1

    invoke-virtual {v5, p1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    int-to-float v0, v0

    invoke-interface {p1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setPreRotation(FF)V

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_6
    :goto_1
    return-void

    :pswitch_1
    move-object p1, p2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ENABLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScaling:Z

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScaling:Z

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p1, :cond_8

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleZoomWhileSwitching(ZLandroid/os/Bundle;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
