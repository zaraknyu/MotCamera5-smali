.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleSingleTap()V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMacroCameraWithWideSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_2
    return-void
.end method

.method public final handleTouchDown()V
    .locals 0

    return-void
.end method

.method public final handleTouchUp()V
    .locals 0

    return-void
.end method
