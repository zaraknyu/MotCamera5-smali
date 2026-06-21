.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mTouchDownHandled:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    return-void
.end method


# virtual methods
.method public final handleSingleTap()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Latch;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x3

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->-$$Nest$mshowZoomLimitedHint(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {v0, p0, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    goto :goto_0

    :cond_1
    iget p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, v3, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Latch;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x2

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->-$$Nest$mshowZoomLimitedHint(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {v0, p0, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    goto :goto_1

    :cond_4
    iget p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, v3, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraZoomValue:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_6
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraZoomValue:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_7
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_8

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_8
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    goto :goto_2

    :cond_9
    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleTouchDown()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_0

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraZoomValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_3

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraZoomValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    goto :goto_3

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    :goto_3
    return-void

    :pswitch_3
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_4

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    goto :goto_4

    :cond_4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    :goto_4
    return-void

    :pswitch_4
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_5

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    goto :goto_5

    :cond_5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleTouchUp()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
